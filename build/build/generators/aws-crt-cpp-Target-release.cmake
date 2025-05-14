# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(aws-crt-cpp_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(aws-crt-cpp_FRAMEWORKS_FOUND_RELEASE "${aws-crt-cpp_FRAMEWORKS_RELEASE}" "${aws-crt-cpp_FRAMEWORK_DIRS_RELEASE}")

set(aws-crt-cpp_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET aws-crt-cpp_DEPS_TARGET)
    add_library(aws-crt-cpp_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET aws-crt-cpp_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${aws-crt-cpp_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${aws-crt-cpp_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:AWS::aws-c-s3;AWS::aws-c-auth;AWS::aws-c-event-stream;AWS::aws-c-mqtt;AWS::aws-c-http;AWS::aws-c-compression;AWS::aws-c-io;AWS::aws-c-cal;AWS::aws-c-sdkutils;AWS::aws-checksums;AWS::aws-c-common>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### aws-crt-cpp_DEPS_TARGET to all of them
conan_package_library_targets("${aws-crt-cpp_LIBS_RELEASE}"    # libraries
                              "${aws-crt-cpp_LIB_DIRS_RELEASE}" # package_libdir
                              "${aws-crt-cpp_BIN_DIRS_RELEASE}" # package_bindir
                              "${aws-crt-cpp_LIBRARY_TYPE_RELEASE}"
                              "${aws-crt-cpp_IS_HOST_WINDOWS_RELEASE}"
                              aws-crt-cpp_DEPS_TARGET
                              aws-crt-cpp_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "aws-crt-cpp"    # package_name
                              "${aws-crt-cpp_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${aws-crt-cpp_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET AWS::aws-crt-cpp
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${aws-crt-cpp_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${aws-crt-cpp_LIBRARIES_TARGETS}>
                 )

    if("${aws-crt-cpp_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET AWS::aws-crt-cpp
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     aws-crt-cpp_DEPS_TARGET)
    endif()

    set_property(TARGET AWS::aws-crt-cpp
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${aws-crt-cpp_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET AWS::aws-crt-cpp
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${aws-crt-cpp_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET AWS::aws-crt-cpp
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${aws-crt-cpp_LIB_DIRS_RELEASE}>)
    set_property(TARGET AWS::aws-crt-cpp
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${aws-crt-cpp_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET AWS::aws-crt-cpp
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${aws-crt-cpp_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(aws-crt-cpp_LIBRARIES_RELEASE AWS::aws-crt-cpp)
