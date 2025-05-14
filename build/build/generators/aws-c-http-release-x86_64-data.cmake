########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(aws-c-http_COMPONENT_NAMES "")
if(DEFINED aws-c-http_FIND_DEPENDENCY_NAMES)
  list(APPEND aws-c-http_FIND_DEPENDENCY_NAMES aws-c-compression aws-c-io aws-c-cal aws-c-common)
  list(REMOVE_DUPLICATES aws-c-http_FIND_DEPENDENCY_NAMES)
else()
  set(aws-c-http_FIND_DEPENDENCY_NAMES aws-c-compression aws-c-io aws-c-cal aws-c-common)
endif()
set(aws-c-compression_FIND_MODE "NO_MODULE")
set(aws-c-io_FIND_MODE "NO_MODULE")
set(aws-c-cal_FIND_MODE "NO_MODULE")
set(aws-c-common_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(aws-c-http_PACKAGE_FOLDER_RELEASE "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c57114c4ef383e/p")
set(aws-c-http_BUILD_MODULES_PATHS_RELEASE )


set(aws-c-http_INCLUDE_DIRS_RELEASE "${aws-c-http_PACKAGE_FOLDER_RELEASE}/include")
set(aws-c-http_RES_DIRS_RELEASE )
set(aws-c-http_DEFINITIONS_RELEASE )
set(aws-c-http_SHARED_LINK_FLAGS_RELEASE )
set(aws-c-http_EXE_LINK_FLAGS_RELEASE )
set(aws-c-http_OBJECTS_RELEASE )
set(aws-c-http_COMPILE_DEFINITIONS_RELEASE )
set(aws-c-http_COMPILE_OPTIONS_C_RELEASE )
set(aws-c-http_COMPILE_OPTIONS_CXX_RELEASE )
set(aws-c-http_LIB_DIRS_RELEASE "${aws-c-http_PACKAGE_FOLDER_RELEASE}/lib")
set(aws-c-http_BIN_DIRS_RELEASE )
set(aws-c-http_LIBRARY_TYPE_RELEASE STATIC)
set(aws-c-http_IS_HOST_WINDOWS_RELEASE 1)
set(aws-c-http_LIBS_RELEASE aws-c-http)
set(aws-c-http_SYSTEM_LIBS_RELEASE )
set(aws-c-http_FRAMEWORK_DIRS_RELEASE )
set(aws-c-http_FRAMEWORKS_RELEASE )
set(aws-c-http_BUILD_DIRS_RELEASE )
set(aws-c-http_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(aws-c-http_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${aws-c-http_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${aws-c-http_COMPILE_OPTIONS_C_RELEASE}>")
set(aws-c-http_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${aws-c-http_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${aws-c-http_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${aws-c-http_EXE_LINK_FLAGS_RELEASE}>")


set(aws-c-http_COMPONENTS_RELEASE )