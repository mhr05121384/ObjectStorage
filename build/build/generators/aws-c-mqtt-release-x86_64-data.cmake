########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(aws-c-mqtt_COMPONENT_NAMES "")
if(DEFINED aws-c-mqtt_FIND_DEPENDENCY_NAMES)
  list(APPEND aws-c-mqtt_FIND_DEPENDENCY_NAMES aws-c-http aws-c-io aws-c-cal aws-c-common)
  list(REMOVE_DUPLICATES aws-c-mqtt_FIND_DEPENDENCY_NAMES)
else()
  set(aws-c-mqtt_FIND_DEPENDENCY_NAMES aws-c-http aws-c-io aws-c-cal aws-c-common)
endif()
set(aws-c-http_FIND_MODE "NO_MODULE")
set(aws-c-io_FIND_MODE "NO_MODULE")
set(aws-c-cal_FIND_MODE "NO_MODULE")
set(aws-c-common_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(aws-c-mqtt_PACKAGE_FOLDER_RELEASE "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c8b7c34c08e6ee/p")
set(aws-c-mqtt_BUILD_MODULES_PATHS_RELEASE )


set(aws-c-mqtt_INCLUDE_DIRS_RELEASE "${aws-c-mqtt_PACKAGE_FOLDER_RELEASE}/include")
set(aws-c-mqtt_RES_DIRS_RELEASE )
set(aws-c-mqtt_DEFINITIONS_RELEASE )
set(aws-c-mqtt_SHARED_LINK_FLAGS_RELEASE )
set(aws-c-mqtt_EXE_LINK_FLAGS_RELEASE )
set(aws-c-mqtt_OBJECTS_RELEASE )
set(aws-c-mqtt_COMPILE_DEFINITIONS_RELEASE )
set(aws-c-mqtt_COMPILE_OPTIONS_C_RELEASE )
set(aws-c-mqtt_COMPILE_OPTIONS_CXX_RELEASE )
set(aws-c-mqtt_LIB_DIRS_RELEASE "${aws-c-mqtt_PACKAGE_FOLDER_RELEASE}/lib")
set(aws-c-mqtt_BIN_DIRS_RELEASE )
set(aws-c-mqtt_LIBRARY_TYPE_RELEASE STATIC)
set(aws-c-mqtt_IS_HOST_WINDOWS_RELEASE 1)
set(aws-c-mqtt_LIBS_RELEASE aws-c-mqtt)
set(aws-c-mqtt_SYSTEM_LIBS_RELEASE )
set(aws-c-mqtt_FRAMEWORK_DIRS_RELEASE )
set(aws-c-mqtt_FRAMEWORKS_RELEASE )
set(aws-c-mqtt_BUILD_DIRS_RELEASE )
set(aws-c-mqtt_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(aws-c-mqtt_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${aws-c-mqtt_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${aws-c-mqtt_COMPILE_OPTIONS_C_RELEASE}>")
set(aws-c-mqtt_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${aws-c-mqtt_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${aws-c-mqtt_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${aws-c-mqtt_EXE_LINK_FLAGS_RELEASE}>")


set(aws-c-mqtt_COMPONENTS_RELEASE )