########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(aws-c-s3_COMPONENT_NAMES "")
if(DEFINED aws-c-s3_FIND_DEPENDENCY_NAMES)
  list(APPEND aws-c-s3_FIND_DEPENDENCY_NAMES aws-c-auth aws-c-http aws-c-io aws-c-cal aws-checksums aws-c-common)
  list(REMOVE_DUPLICATES aws-c-s3_FIND_DEPENDENCY_NAMES)
else()
  set(aws-c-s3_FIND_DEPENDENCY_NAMES aws-c-auth aws-c-http aws-c-io aws-c-cal aws-checksums aws-c-common)
endif()
set(aws-c-auth_FIND_MODE "NO_MODULE")
set(aws-c-http_FIND_MODE "NO_MODULE")
set(aws-c-io_FIND_MODE "NO_MODULE")
set(aws-c-cal_FIND_MODE "NO_MODULE")
set(aws-checksums_FIND_MODE "NO_MODULE")
set(aws-c-common_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(aws-c-s3_PACKAGE_FOLDER_RELEASE "C:/Users/MH.Rezaiy_110/.conan2/p/aws-cc54ab4935d35d/p")
set(aws-c-s3_BUILD_MODULES_PATHS_RELEASE )


set(aws-c-s3_INCLUDE_DIRS_RELEASE )
set(aws-c-s3_RES_DIRS_RELEASE )
set(aws-c-s3_DEFINITIONS_RELEASE )
set(aws-c-s3_SHARED_LINK_FLAGS_RELEASE )
set(aws-c-s3_EXE_LINK_FLAGS_RELEASE )
set(aws-c-s3_OBJECTS_RELEASE )
set(aws-c-s3_COMPILE_DEFINITIONS_RELEASE )
set(aws-c-s3_COMPILE_OPTIONS_C_RELEASE )
set(aws-c-s3_COMPILE_OPTIONS_CXX_RELEASE )
set(aws-c-s3_LIB_DIRS_RELEASE "${aws-c-s3_PACKAGE_FOLDER_RELEASE}/lib")
set(aws-c-s3_BIN_DIRS_RELEASE )
set(aws-c-s3_LIBRARY_TYPE_RELEASE STATIC)
set(aws-c-s3_IS_HOST_WINDOWS_RELEASE 1)
set(aws-c-s3_LIBS_RELEASE aws-c-s3)
set(aws-c-s3_SYSTEM_LIBS_RELEASE )
set(aws-c-s3_FRAMEWORK_DIRS_RELEASE )
set(aws-c-s3_FRAMEWORKS_RELEASE )
set(aws-c-s3_BUILD_DIRS_RELEASE )
set(aws-c-s3_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(aws-c-s3_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${aws-c-s3_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${aws-c-s3_COMPILE_OPTIONS_C_RELEASE}>")
set(aws-c-s3_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${aws-c-s3_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${aws-c-s3_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${aws-c-s3_EXE_LINK_FLAGS_RELEASE}>")


set(aws-c-s3_COMPONENTS_RELEASE )