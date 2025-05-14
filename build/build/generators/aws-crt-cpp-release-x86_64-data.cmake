########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(aws-crt-cpp_COMPONENT_NAMES "")
if(DEFINED aws-crt-cpp_FIND_DEPENDENCY_NAMES)
  list(APPEND aws-crt-cpp_FIND_DEPENDENCY_NAMES aws-c-s3 aws-c-auth aws-c-event-stream aws-c-mqtt aws-c-http aws-c-compression aws-c-io aws-c-cal aws-c-sdkutils aws-checksums aws-c-common)
  list(REMOVE_DUPLICATES aws-crt-cpp_FIND_DEPENDENCY_NAMES)
else()
  set(aws-crt-cpp_FIND_DEPENDENCY_NAMES aws-c-s3 aws-c-auth aws-c-event-stream aws-c-mqtt aws-c-http aws-c-compression aws-c-io aws-c-cal aws-c-sdkutils aws-checksums aws-c-common)
endif()
set(aws-c-s3_FIND_MODE "NO_MODULE")
set(aws-c-auth_FIND_MODE "NO_MODULE")
set(aws-c-event-stream_FIND_MODE "NO_MODULE")
set(aws-c-mqtt_FIND_MODE "NO_MODULE")
set(aws-c-http_FIND_MODE "NO_MODULE")
set(aws-c-compression_FIND_MODE "NO_MODULE")
set(aws-c-io_FIND_MODE "NO_MODULE")
set(aws-c-cal_FIND_MODE "NO_MODULE")
set(aws-c-sdkutils_FIND_MODE "NO_MODULE")
set(aws-checksums_FIND_MODE "NO_MODULE")
set(aws-c-common_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(aws-crt-cpp_PACKAGE_FOLDER_RELEASE "C:/Users/MH.Rezaiy_110/.conan2/p/aws-cca8f8953bb9d5/p")
set(aws-crt-cpp_BUILD_MODULES_PATHS_RELEASE )


set(aws-crt-cpp_INCLUDE_DIRS_RELEASE "${aws-crt-cpp_PACKAGE_FOLDER_RELEASE}/include")
set(aws-crt-cpp_RES_DIRS_RELEASE )
set(aws-crt-cpp_DEFINITIONS_RELEASE )
set(aws-crt-cpp_SHARED_LINK_FLAGS_RELEASE )
set(aws-crt-cpp_EXE_LINK_FLAGS_RELEASE )
set(aws-crt-cpp_OBJECTS_RELEASE )
set(aws-crt-cpp_COMPILE_DEFINITIONS_RELEASE )
set(aws-crt-cpp_COMPILE_OPTIONS_C_RELEASE )
set(aws-crt-cpp_COMPILE_OPTIONS_CXX_RELEASE )
set(aws-crt-cpp_LIB_DIRS_RELEASE "${aws-crt-cpp_PACKAGE_FOLDER_RELEASE}/lib")
set(aws-crt-cpp_BIN_DIRS_RELEASE )
set(aws-crt-cpp_LIBRARY_TYPE_RELEASE STATIC)
set(aws-crt-cpp_IS_HOST_WINDOWS_RELEASE 1)
set(aws-crt-cpp_LIBS_RELEASE aws-crt-cpp)
set(aws-crt-cpp_SYSTEM_LIBS_RELEASE )
set(aws-crt-cpp_FRAMEWORK_DIRS_RELEASE )
set(aws-crt-cpp_FRAMEWORKS_RELEASE )
set(aws-crt-cpp_BUILD_DIRS_RELEASE )
set(aws-crt-cpp_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(aws-crt-cpp_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${aws-crt-cpp_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${aws-crt-cpp_COMPILE_OPTIONS_C_RELEASE}>")
set(aws-crt-cpp_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${aws-crt-cpp_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${aws-crt-cpp_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${aws-crt-cpp_EXE_LINK_FLAGS_RELEASE}>")


set(aws-crt-cpp_COMPONENTS_RELEASE )