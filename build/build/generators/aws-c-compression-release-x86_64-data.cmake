########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(aws-c-compression_COMPONENT_NAMES "")
if(DEFINED aws-c-compression_FIND_DEPENDENCY_NAMES)
  list(APPEND aws-c-compression_FIND_DEPENDENCY_NAMES aws-c-common)
  list(REMOVE_DUPLICATES aws-c-compression_FIND_DEPENDENCY_NAMES)
else()
  set(aws-c-compression_FIND_DEPENDENCY_NAMES aws-c-common)
endif()
set(aws-c-common_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(aws-c-compression_PACKAGE_FOLDER_RELEASE "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c3e8ad6ee1cbc2/p")
set(aws-c-compression_BUILD_MODULES_PATHS_RELEASE )


set(aws-c-compression_INCLUDE_DIRS_RELEASE "${aws-c-compression_PACKAGE_FOLDER_RELEASE}/include")
set(aws-c-compression_RES_DIRS_RELEASE )
set(aws-c-compression_DEFINITIONS_RELEASE )
set(aws-c-compression_SHARED_LINK_FLAGS_RELEASE )
set(aws-c-compression_EXE_LINK_FLAGS_RELEASE )
set(aws-c-compression_OBJECTS_RELEASE )
set(aws-c-compression_COMPILE_DEFINITIONS_RELEASE )
set(aws-c-compression_COMPILE_OPTIONS_C_RELEASE )
set(aws-c-compression_COMPILE_OPTIONS_CXX_RELEASE )
set(aws-c-compression_LIB_DIRS_RELEASE "${aws-c-compression_PACKAGE_FOLDER_RELEASE}/lib")
set(aws-c-compression_BIN_DIRS_RELEASE )
set(aws-c-compression_LIBRARY_TYPE_RELEASE STATIC)
set(aws-c-compression_IS_HOST_WINDOWS_RELEASE 1)
set(aws-c-compression_LIBS_RELEASE aws-c-compression)
set(aws-c-compression_SYSTEM_LIBS_RELEASE )
set(aws-c-compression_FRAMEWORK_DIRS_RELEASE )
set(aws-c-compression_FRAMEWORKS_RELEASE )
set(aws-c-compression_BUILD_DIRS_RELEASE )
set(aws-c-compression_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(aws-c-compression_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${aws-c-compression_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${aws-c-compression_COMPILE_OPTIONS_C_RELEASE}>")
set(aws-c-compression_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${aws-c-compression_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${aws-c-compression_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${aws-c-compression_EXE_LINK_FLAGS_RELEASE}>")


set(aws-c-compression_COMPONENTS_RELEASE )