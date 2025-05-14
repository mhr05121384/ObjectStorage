########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(aws-c-common_COMPONENT_NAMES "")
if(DEFINED aws-c-common_FIND_DEPENDENCY_NAMES)
  list(APPEND aws-c-common_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES aws-c-common_FIND_DEPENDENCY_NAMES)
else()
  set(aws-c-common_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(aws-c-common_PACKAGE_FOLDER_RELEASE "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c596c3fa4abdde/p")
set(aws-c-common_BUILD_MODULES_PATHS_RELEASE )


set(aws-c-common_INCLUDE_DIRS_RELEASE "${aws-c-common_PACKAGE_FOLDER_RELEASE}/include")
set(aws-c-common_RES_DIRS_RELEASE )
set(aws-c-common_DEFINITIONS_RELEASE )
set(aws-c-common_SHARED_LINK_FLAGS_RELEASE )
set(aws-c-common_EXE_LINK_FLAGS_RELEASE )
set(aws-c-common_OBJECTS_RELEASE )
set(aws-c-common_COMPILE_DEFINITIONS_RELEASE )
set(aws-c-common_COMPILE_OPTIONS_C_RELEASE )
set(aws-c-common_COMPILE_OPTIONS_CXX_RELEASE )
set(aws-c-common_LIB_DIRS_RELEASE "${aws-c-common_PACKAGE_FOLDER_RELEASE}/lib")
set(aws-c-common_BIN_DIRS_RELEASE )
set(aws-c-common_LIBRARY_TYPE_RELEASE STATIC)
set(aws-c-common_IS_HOST_WINDOWS_RELEASE 1)
set(aws-c-common_LIBS_RELEASE aws-c-common)
set(aws-c-common_SYSTEM_LIBS_RELEASE bcrypt ws2_32 kernel32 shlwapi psapi)
set(aws-c-common_FRAMEWORK_DIRS_RELEASE )
set(aws-c-common_FRAMEWORKS_RELEASE )
set(aws-c-common_BUILD_DIRS_RELEASE "${aws-c-common_PACKAGE_FOLDER_RELEASE}/lib/cmake")
set(aws-c-common_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(aws-c-common_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${aws-c-common_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${aws-c-common_COMPILE_OPTIONS_C_RELEASE}>")
set(aws-c-common_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${aws-c-common_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${aws-c-common_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${aws-c-common_EXE_LINK_FLAGS_RELEASE}>")


set(aws-c-common_COMPONENTS_RELEASE )