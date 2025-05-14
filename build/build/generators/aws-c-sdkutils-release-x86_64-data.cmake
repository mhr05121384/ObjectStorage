########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(aws-c-sdkutils_COMPONENT_NAMES "")
if(DEFINED aws-c-sdkutils_FIND_DEPENDENCY_NAMES)
  list(APPEND aws-c-sdkutils_FIND_DEPENDENCY_NAMES aws-c-common)
  list(REMOVE_DUPLICATES aws-c-sdkutils_FIND_DEPENDENCY_NAMES)
else()
  set(aws-c-sdkutils_FIND_DEPENDENCY_NAMES aws-c-common)
endif()
set(aws-c-common_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(aws-c-sdkutils_PACKAGE_FOLDER_RELEASE "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c957e4a835f786/p")
set(aws-c-sdkutils_BUILD_MODULES_PATHS_RELEASE )


set(aws-c-sdkutils_INCLUDE_DIRS_RELEASE "${aws-c-sdkutils_PACKAGE_FOLDER_RELEASE}/include")
set(aws-c-sdkutils_RES_DIRS_RELEASE )
set(aws-c-sdkutils_DEFINITIONS_RELEASE )
set(aws-c-sdkutils_SHARED_LINK_FLAGS_RELEASE )
set(aws-c-sdkutils_EXE_LINK_FLAGS_RELEASE )
set(aws-c-sdkutils_OBJECTS_RELEASE )
set(aws-c-sdkutils_COMPILE_DEFINITIONS_RELEASE )
set(aws-c-sdkutils_COMPILE_OPTIONS_C_RELEASE )
set(aws-c-sdkutils_COMPILE_OPTIONS_CXX_RELEASE )
set(aws-c-sdkutils_LIB_DIRS_RELEASE "${aws-c-sdkutils_PACKAGE_FOLDER_RELEASE}/lib")
set(aws-c-sdkutils_BIN_DIRS_RELEASE )
set(aws-c-sdkutils_LIBRARY_TYPE_RELEASE STATIC)
set(aws-c-sdkutils_IS_HOST_WINDOWS_RELEASE 1)
set(aws-c-sdkutils_LIBS_RELEASE aws-c-sdkutils)
set(aws-c-sdkutils_SYSTEM_LIBS_RELEASE )
set(aws-c-sdkutils_FRAMEWORK_DIRS_RELEASE )
set(aws-c-sdkutils_FRAMEWORKS_RELEASE )
set(aws-c-sdkutils_BUILD_DIRS_RELEASE )
set(aws-c-sdkutils_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(aws-c-sdkutils_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${aws-c-sdkutils_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${aws-c-sdkutils_COMPILE_OPTIONS_C_RELEASE}>")
set(aws-c-sdkutils_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${aws-c-sdkutils_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${aws-c-sdkutils_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${aws-c-sdkutils_EXE_LINK_FLAGS_RELEASE}>")


set(aws-c-sdkutils_COMPONENTS_RELEASE )