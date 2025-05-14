########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(aws-checksums_COMPONENT_NAMES "")
if(DEFINED aws-checksums_FIND_DEPENDENCY_NAMES)
  list(APPEND aws-checksums_FIND_DEPENDENCY_NAMES aws-c-common)
  list(REMOVE_DUPLICATES aws-checksums_FIND_DEPENDENCY_NAMES)
else()
  set(aws-checksums_FIND_DEPENDENCY_NAMES aws-c-common)
endif()
set(aws-c-common_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(aws-checksums_PACKAGE_FOLDER_RELEASE "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c52ef692af373e/p")
set(aws-checksums_BUILD_MODULES_PATHS_RELEASE )


set(aws-checksums_INCLUDE_DIRS_RELEASE "${aws-checksums_PACKAGE_FOLDER_RELEASE}/include")
set(aws-checksums_RES_DIRS_RELEASE )
set(aws-checksums_DEFINITIONS_RELEASE )
set(aws-checksums_SHARED_LINK_FLAGS_RELEASE )
set(aws-checksums_EXE_LINK_FLAGS_RELEASE )
set(aws-checksums_OBJECTS_RELEASE )
set(aws-checksums_COMPILE_DEFINITIONS_RELEASE )
set(aws-checksums_COMPILE_OPTIONS_C_RELEASE )
set(aws-checksums_COMPILE_OPTIONS_CXX_RELEASE )
set(aws-checksums_LIB_DIRS_RELEASE "${aws-checksums_PACKAGE_FOLDER_RELEASE}/lib")
set(aws-checksums_BIN_DIRS_RELEASE )
set(aws-checksums_LIBRARY_TYPE_RELEASE STATIC)
set(aws-checksums_IS_HOST_WINDOWS_RELEASE 1)
set(aws-checksums_LIBS_RELEASE aws-checksums)
set(aws-checksums_SYSTEM_LIBS_RELEASE )
set(aws-checksums_FRAMEWORK_DIRS_RELEASE )
set(aws-checksums_FRAMEWORKS_RELEASE )
set(aws-checksums_BUILD_DIRS_RELEASE )
set(aws-checksums_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(aws-checksums_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${aws-checksums_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${aws-checksums_COMPILE_OPTIONS_C_RELEASE}>")
set(aws-checksums_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${aws-checksums_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${aws-checksums_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${aws-checksums_EXE_LINK_FLAGS_RELEASE}>")


set(aws-checksums_COMPONENTS_RELEASE )