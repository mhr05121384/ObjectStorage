########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(aws-c-io_COMPONENT_NAMES "")
if(DEFINED aws-c-io_FIND_DEPENDENCY_NAMES)
  list(APPEND aws-c-io_FIND_DEPENDENCY_NAMES aws-c-cal aws-c-common)
  list(REMOVE_DUPLICATES aws-c-io_FIND_DEPENDENCY_NAMES)
else()
  set(aws-c-io_FIND_DEPENDENCY_NAMES aws-c-cal aws-c-common)
endif()
set(aws-c-cal_FIND_MODE "NO_MODULE")
set(aws-c-common_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(aws-c-io_PACKAGE_FOLDER_RELEASE "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c71ac73f9b54ad/p")
set(aws-c-io_BUILD_MODULES_PATHS_RELEASE )


set(aws-c-io_INCLUDE_DIRS_RELEASE "${aws-c-io_PACKAGE_FOLDER_RELEASE}/include")
set(aws-c-io_RES_DIRS_RELEASE )
set(aws-c-io_DEFINITIONS_RELEASE )
set(aws-c-io_SHARED_LINK_FLAGS_RELEASE )
set(aws-c-io_EXE_LINK_FLAGS_RELEASE )
set(aws-c-io_OBJECTS_RELEASE )
set(aws-c-io_COMPILE_DEFINITIONS_RELEASE )
set(aws-c-io_COMPILE_OPTIONS_C_RELEASE )
set(aws-c-io_COMPILE_OPTIONS_CXX_RELEASE )
set(aws-c-io_LIB_DIRS_RELEASE "${aws-c-io_PACKAGE_FOLDER_RELEASE}/lib")
set(aws-c-io_BIN_DIRS_RELEASE )
set(aws-c-io_LIBRARY_TYPE_RELEASE STATIC)
set(aws-c-io_IS_HOST_WINDOWS_RELEASE 1)
set(aws-c-io_LIBS_RELEASE aws-c-io)
set(aws-c-io_SYSTEM_LIBS_RELEASE crypt32 secur32 shlwapi)
set(aws-c-io_FRAMEWORK_DIRS_RELEASE )
set(aws-c-io_FRAMEWORKS_RELEASE )
set(aws-c-io_BUILD_DIRS_RELEASE )
set(aws-c-io_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(aws-c-io_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${aws-c-io_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${aws-c-io_COMPILE_OPTIONS_C_RELEASE}>")
set(aws-c-io_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${aws-c-io_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${aws-c-io_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${aws-c-io_EXE_LINK_FLAGS_RELEASE}>")


set(aws-c-io_COMPONENTS_RELEASE )