########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(aws-c-auth_COMPONENT_NAMES "")
if(DEFINED aws-c-auth_FIND_DEPENDENCY_NAMES)
  list(APPEND aws-c-auth_FIND_DEPENDENCY_NAMES aws-c-http aws-c-io aws-c-cal aws-c-sdkutils aws-c-common)
  list(REMOVE_DUPLICATES aws-c-auth_FIND_DEPENDENCY_NAMES)
else()
  set(aws-c-auth_FIND_DEPENDENCY_NAMES aws-c-http aws-c-io aws-c-cal aws-c-sdkutils aws-c-common)
endif()
set(aws-c-http_FIND_MODE "NO_MODULE")
set(aws-c-io_FIND_MODE "NO_MODULE")
set(aws-c-cal_FIND_MODE "NO_MODULE")
set(aws-c-sdkutils_FIND_MODE "NO_MODULE")
set(aws-c-common_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(aws-c-auth_PACKAGE_FOLDER_RELEASE "C:/Users/MH.Rezaiy_110/.conan2/p/aws-cb8bb937ce6f5d/p")
set(aws-c-auth_BUILD_MODULES_PATHS_RELEASE )


set(aws-c-auth_INCLUDE_DIRS_RELEASE "${aws-c-auth_PACKAGE_FOLDER_RELEASE}/include")
set(aws-c-auth_RES_DIRS_RELEASE )
set(aws-c-auth_DEFINITIONS_RELEASE )
set(aws-c-auth_SHARED_LINK_FLAGS_RELEASE )
set(aws-c-auth_EXE_LINK_FLAGS_RELEASE )
set(aws-c-auth_OBJECTS_RELEASE )
set(aws-c-auth_COMPILE_DEFINITIONS_RELEASE )
set(aws-c-auth_COMPILE_OPTIONS_C_RELEASE )
set(aws-c-auth_COMPILE_OPTIONS_CXX_RELEASE )
set(aws-c-auth_LIB_DIRS_RELEASE "${aws-c-auth_PACKAGE_FOLDER_RELEASE}/lib")
set(aws-c-auth_BIN_DIRS_RELEASE )
set(aws-c-auth_LIBRARY_TYPE_RELEASE STATIC)
set(aws-c-auth_IS_HOST_WINDOWS_RELEASE 1)
set(aws-c-auth_LIBS_RELEASE aws-c-auth)
set(aws-c-auth_SYSTEM_LIBS_RELEASE )
set(aws-c-auth_FRAMEWORK_DIRS_RELEASE )
set(aws-c-auth_FRAMEWORKS_RELEASE )
set(aws-c-auth_BUILD_DIRS_RELEASE )
set(aws-c-auth_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(aws-c-auth_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${aws-c-auth_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${aws-c-auth_COMPILE_OPTIONS_C_RELEASE}>")
set(aws-c-auth_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${aws-c-auth_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${aws-c-auth_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${aws-c-auth_EXE_LINK_FLAGS_RELEASE}>")


set(aws-c-auth_COMPONENTS_RELEASE )