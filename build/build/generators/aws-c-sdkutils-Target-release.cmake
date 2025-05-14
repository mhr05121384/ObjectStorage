# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(aws-c-sdkutils_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(aws-c-sdkutils_FRAMEWORKS_FOUND_RELEASE "${aws-c-sdkutils_FRAMEWORKS_RELEASE}" "${aws-c-sdkutils_FRAMEWORK_DIRS_RELEASE}")

set(aws-c-sdkutils_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET aws-c-sdkutils_DEPS_TARGET)
    add_library(aws-c-sdkutils_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET aws-c-sdkutils_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${aws-c-sdkutils_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${aws-c-sdkutils_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:AWS::aws-c-common>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### aws-c-sdkutils_DEPS_TARGET to all of them
conan_package_library_targets("${aws-c-sdkutils_LIBS_RELEASE}"    # libraries
                              "${aws-c-sdkutils_LIB_DIRS_RELEASE}" # package_libdir
                              "${aws-c-sdkutils_BIN_DIRS_RELEASE}" # package_bindir
                              "${aws-c-sdkutils_LIBRARY_TYPE_RELEASE}"
                              "${aws-c-sdkutils_IS_HOST_WINDOWS_RELEASE}"
                              aws-c-sdkutils_DEPS_TARGET
                              aws-c-sdkutils_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "aws-c-sdkutils"    # package_name
                              "${aws-c-sdkutils_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${aws-c-sdkutils_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET AWS::aws-c-sdkutils
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${aws-c-sdkutils_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${aws-c-sdkutils_LIBRARIES_TARGETS}>
                 )

    if("${aws-c-sdkutils_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET AWS::aws-c-sdkutils
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     aws-c-sdkutils_DEPS_TARGET)
    endif()

    set_property(TARGET AWS::aws-c-sdkutils
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${aws-c-sdkutils_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET AWS::aws-c-sdkutils
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${aws-c-sdkutils_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET AWS::aws-c-sdkutils
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${aws-c-sdkutils_LIB_DIRS_RELEASE}>)
    set_property(TARGET AWS::aws-c-sdkutils
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${aws-c-sdkutils_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET AWS::aws-c-sdkutils
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${aws-c-sdkutils_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(aws-c-sdkutils_LIBRARIES_RELEASE AWS::aws-c-sdkutils)
