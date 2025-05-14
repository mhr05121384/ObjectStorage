########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(aws-c-event-stream_COMPONENT_NAMES "")
if(DEFINED aws-c-event-stream_FIND_DEPENDENCY_NAMES)
  list(APPEND aws-c-event-stream_FIND_DEPENDENCY_NAMES aws-c-io aws-checksums aws-c-common)
  list(REMOVE_DUPLICATES aws-c-event-stream_FIND_DEPENDENCY_NAMES)
else()
  set(aws-c-event-stream_FIND_DEPENDENCY_NAMES aws-c-io aws-checksums aws-c-common)
endif()
set(aws-c-io_FIND_MODE "NO_MODULE")
set(aws-checksums_FIND_MODE "NO_MODULE")
set(aws-c-common_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(aws-c-event-stream_PACKAGE_FOLDER_RELEASE "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c20714f59880ac/p")
set(aws-c-event-stream_BUILD_MODULES_PATHS_RELEASE )


set(aws-c-event-stream_INCLUDE_DIRS_RELEASE "${aws-c-event-stream_PACKAGE_FOLDER_RELEASE}/include")
set(aws-c-event-stream_RES_DIRS_RELEASE )
set(aws-c-event-stream_DEFINITIONS_RELEASE )
set(aws-c-event-stream_SHARED_LINK_FLAGS_RELEASE )
set(aws-c-event-stream_EXE_LINK_FLAGS_RELEASE )
set(aws-c-event-stream_OBJECTS_RELEASE )
set(aws-c-event-stream_COMPILE_DEFINITIONS_RELEASE )
set(aws-c-event-stream_COMPILE_OPTIONS_C_RELEASE )
set(aws-c-event-stream_COMPILE_OPTIONS_CXX_RELEASE )
set(aws-c-event-stream_LIB_DIRS_RELEASE "${aws-c-event-stream_PACKAGE_FOLDER_RELEASE}/lib")
set(aws-c-event-stream_BIN_DIRS_RELEASE )
set(aws-c-event-stream_LIBRARY_TYPE_RELEASE STATIC)
set(aws-c-event-stream_IS_HOST_WINDOWS_RELEASE 1)
set(aws-c-event-stream_LIBS_RELEASE aws-c-event-stream)
set(aws-c-event-stream_SYSTEM_LIBS_RELEASE )
set(aws-c-event-stream_FRAMEWORK_DIRS_RELEASE )
set(aws-c-event-stream_FRAMEWORKS_RELEASE )
set(aws-c-event-stream_BUILD_DIRS_RELEASE )
set(aws-c-event-stream_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(aws-c-event-stream_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${aws-c-event-stream_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${aws-c-event-stream_COMPILE_OPTIONS_C_RELEASE}>")
set(aws-c-event-stream_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${aws-c-event-stream_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${aws-c-event-stream_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${aws-c-event-stream_EXE_LINK_FLAGS_RELEASE}>")


set(aws-c-event-stream_COMPONENTS_RELEASE )