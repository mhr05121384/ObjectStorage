# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(aws-checksums_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(aws-checksums_FRAMEWORKS_FOUND_RELEASE "${aws-checksums_FRAMEWORKS_RELEASE}" "${aws-checksums_FRAMEWORK_DIRS_RELEASE}")

set(aws-checksums_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET aws-checksums_DEPS_TARGET)
    add_library(aws-checksums_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET aws-checksums_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${aws-checksums_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${aws-checksums_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:AWS::aws-c-common>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### aws-checksums_DEPS_TARGET to all of them
conan_package_library_targets("${aws-checksums_LIBS_RELEASE}"    # libraries
                              "${aws-checksums_LIB_DIRS_RELEASE}" # package_libdir
                              "${aws-checksums_BIN_DIRS_RELEASE}" # package_bindir
                              "${aws-checksums_LIBRARY_TYPE_RELEASE}"
                              "${aws-checksums_IS_HOST_WINDOWS_RELEASE}"
                              aws-checksums_DEPS_TARGET
                              aws-checksums_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "aws-checksums"    # package_name
                              "${aws-checksums_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${aws-checksums_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET AWS::aws-checksums
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${aws-checksums_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${aws-checksums_LIBRARIES_TARGETS}>
                 )

    if("${aws-checksums_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET AWS::aws-checksums
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     aws-checksums_DEPS_TARGET)
    endif()

    set_property(TARGET AWS::aws-checksums
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${aws-checksums_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET AWS::aws-checksums
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${aws-checksums_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET AWS::aws-checksums
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${aws-checksums_LIB_DIRS_RELEASE}>)
    set_property(TARGET AWS::aws-checksums
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${aws-checksums_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET AWS::aws-checksums
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${aws-checksums_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(aws-checksums_LIBRARIES_RELEASE AWS::aws-checksums)
