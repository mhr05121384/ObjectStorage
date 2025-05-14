cmake_minimum_required(VERSION 3.20)
project(ObjectStorage)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(AWSSDK REQUIRED)

add_executable(ObjectStorage main.cpp)

target_link_libraries(ObjectStorage
        aws-sdk-cpp::aws-sdk-cpp
)
