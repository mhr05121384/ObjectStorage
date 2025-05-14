########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(aws-c-cal_COMPONENT_NAMES "")
if(DEFINED aws-c-cal_FIND_DEPENDENCY_NAMES)
  list(APPEND aws-c-cal_FIND_DEPENDENCY_NAMES aws-c-common)
  list(REMOVE_DUPLICATES aws-c-cal_FIND_DEPENDENCY_NAMES)
else()
  set(aws-c-cal_FIND_DEPENDENCY_NAMES aws-c-common)
endif()
set(aws-c-common_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(aws-c-cal_PACKAGE_FOLDER_RELEASE "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c284451a7c8a11/p")
set(aws-c-cal_BUILD_MODULES_PATHS_RELEASE )


set(aws-c-cal_INCLUDE_DIRS_RELEASE "${aws-c-cal_PACKAGE_FOLDER_RELEASE}/include")
set(aws-c-cal_RES_DIRS_RELEASE )
set(aws-c-cal_DEFINITIONS_RELEASE )
set(aws-c-cal_SHARED_LINK_FLAGS_RELEASE )
set(aws-c-cal_EXE_LINK_FLAGS_RELEASE )
set(aws-c-cal_OBJECTS_RELEASE )
set(aws-c-cal_COMPILE_DEFINITIONS_RELEASE )
set(aws-c-cal_COMPILE_OPTIONS_C_RELEASE )
set(aws-c-cal_COMPILE_OPTIONS_CXX_RELEASE )
set(aws-c-cal_LIB_DIRS_RELEASE "${aws-c-cal_PACKAGE_FOLDER_RELEASE}/lib")
set(aws-c-cal_BIN_DIRS_RELEASE )
set(aws-c-cal_LIBRARY_TYPE_RELEASE STATIC)
set(aws-c-cal_IS_HOST_WINDOWS_RELEASE 1)
set(aws-c-cal_LIBS_RELEASE aws-c-cal)
set(aws-c-cal_SYSTEM_LIBS_RELEASE ncrypt)
set(aws-c-cal_FRAMEWORK_DIRS_RELEASE )
set(aws-c-cal_FRAMEWORKS_RELEASE )
set(aws-c-cal_BUILD_DIRS_RELEASE )
set(aws-c-cal_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(aws-c-cal_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${aws-c-cal_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${aws-c-cal_COMPILE_OPTIONS_C_RELEASE}>")
set(aws-c-cal_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${aws-c-cal_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${aws-c-cal_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${aws-c-cal_EXE_LINK_FLAGS_RELEASE}>")


set(aws-c-cal_COMPONENTS_RELEASE )