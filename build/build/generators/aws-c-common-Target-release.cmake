# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(aws-c-common_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(aws-c-common_FRAMEWORKS_FOUND_RELEASE "${aws-c-common_FRAMEWORKS_RELEASE}" "${aws-c-common_FRAMEWORK_DIRS_RELEASE}")

set(aws-c-common_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET aws-c-common_DEPS_TARGET)
    add_library(aws-c-common_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET aws-c-common_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${aws-c-common_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${aws-c-common_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### aws-c-common_DEPS_TARGET to all of them
conan_package_library_targets("${aws-c-common_LIBS_RELEASE}"    # libraries
                              "${aws-c-common_LIB_DIRS_RELEASE}" # package_libdir
                              "${aws-c-common_BIN_DIRS_RELEASE}" # package_bindir
                              "${aws-c-common_LIBRARY_TYPE_RELEASE}"
                              "${aws-c-common_IS_HOST_WINDOWS_RELEASE}"
                              aws-c-common_DEPS_TARGET
                              aws-c-common_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "aws-c-common"    # package_name
                              "${aws-c-common_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${aws-c-common_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET AWS::aws-c-common
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${aws-c-common_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${aws-c-common_LIBRARIES_TARGETS}>
                 )

    if("${aws-c-common_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET AWS::aws-c-common
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     aws-c-common_DEPS_TARGET)
    endif()

    set_property(TARGET AWS::aws-c-common
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${aws-c-common_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET AWS::aws-c-common
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${aws-c-common_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET AWS::aws-c-common
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${aws-c-common_LIB_DIRS_RELEASE}>)
    set_property(TARGET AWS::aws-c-common
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${aws-c-common_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET AWS::aws-c-common
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${aws-c-common_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(aws-c-common_LIBRARIES_RELEASE AWS::aws-c-common)
