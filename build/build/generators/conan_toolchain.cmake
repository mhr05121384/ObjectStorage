# Conan automatically generated toolchain file
# DO NOT EDIT MANUALLY, it will be overwritten

# Avoid including toolchain file several times (bad if appending to variables like
#   CMAKE_CXX_FLAGS. See https://github.com/android/ndk/issues/323
include_guard()
message(STATUS "Using Conan toolchain: ${CMAKE_CURRENT_LIST_FILE}")
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeToolchain' generator only works with CMake >= 3.15")
endif()

########## 'user_toolchain' block #############
# Include one or more CMake user toolchain from tools.cmake.cmaketoolchain:user_toolchain



########## 'generic_system' block #############
# Definition of system, platform and toolset


set(CMAKE_GENERATOR_PLATFORM "x64" CACHE STRING "" FORCE)

message(STATUS "Conan toolchain: CMAKE_GENERATOR_TOOLSET=v143")
set(CMAKE_GENERATOR_TOOLSET "v143" CACHE STRING "" FORCE)


########## 'compilers' block #############



########## 'libcxx' block #############
# Definition of libcxx from 'compiler.libcxx' setting, defining the
# right CXX_FLAGS for that libcxx



########## 'vs_runtime' block #############
# Definition of VS runtime CMAKE_MSVC_RUNTIME_LIBRARY, from settings build_type,
# compiler.runtime, compiler.runtime_type

cmake_policy(GET CMP0091 POLICY_CMP0091)
if(NOT "${POLICY_CMP0091}" STREQUAL NEW)
    message(FATAL_ERROR "The CMake policy CMP0091 must be NEW, but is '${POLICY_CMP0091}'")
endif()
message(STATUS "Conan toolchain: Setting CMAKE_MSVC_RUNTIME_LIBRARY=$<$<CONFIG:Release>:MultiThreadedDLL>")
set(CMAKE_MSVC_RUNTIME_LIBRARY "$<$<CONFIG:Release>:MultiThreadedDLL>")


########## 'vs_debugger_environment' block #############
# Definition of CMAKE_VS_DEBUGGER_ENVIRONMENT from "bindirs" folders of dependencies
# for execution of applications with shared libraries within the VS IDE

# if the file exists it will be loaded by FindFiles block and the variable defined there
if(NOT EXISTS "${CMAKE_CURRENT_LIST_DIR}/conan_cmakedeps_paths.cmake")
# This variable requires CMake>=3.27 to work
set(CMAKE_VS_DEBUGGER_ENVIRONMENT "PATH=$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/aws-s54d5aebbc6823/p/bin;C:/Users/MH.Rezaiy_110/.conan2/p/aws-cca8f8953bb9d5/p/bin;C:/Users/MH.Rezaiy_110/.conan2/p/aws-cc54ab4935d35d/p/bin;C:/Users/MH.Rezaiy_110/.conan2/p/aws-cb8bb937ce6f5d/p/bin;C:/Users/MH.Rezaiy_110/.conan2/p/aws-c20714f59880ac/p/bin;C:/Users/MH.Rezaiy_110/.conan2/p/aws-c8b7c34c08e6ee/p/bin;C:/Users/MH.Rezaiy_110/.conan2/p/aws-c57114c4ef383e/p/bin;C:/Users/MH.Rezaiy_110/.conan2/p/aws-c3e8ad6ee1cbc2/p/bin;C:/Users/MH.Rezaiy_110/.conan2/p/aws-c71ac73f9b54ad/p/bin;C:/Users/MH.Rezaiy_110/.conan2/p/aws-c284451a7c8a11/p/bin;C:/Users/MH.Rezaiy_110/.conan2/p/aws-c957e4a835f786/p/bin;C:/Users/MH.Rezaiy_110/.conan2/p/aws-c52ef692af373e/p/bin;C:/Users/MH.Rezaiy_110/.conan2/p/aws-c596c3fa4abdde/p/bin;C:/Users/MH.Rezaiy_110/.conan2/p/zlib0e715158c1dfd/p/bin>;%PATH%")
endif()


########## 'cppstd' block #############
# Define the C++ and C standards from 'compiler.cppstd' and 'compiler.cstd'

function(conan_modify_std_watch variable access value current_list_file stack)
    set(conan_watched_std_variable "14")
    if (${variable} STREQUAL "CMAKE_C_STANDARD")
        set(conan_watched_std_variable "")
    endif()
    if ("${access}" STREQUAL "MODIFIED_ACCESS" AND NOT "${value}" STREQUAL "${conan_watched_std_variable}")
        message(STATUS "Warning: Standard ${variable} value defined in conan_toolchain.cmake to ${conan_watched_std_variable} has been modified to ${value} by ${current_list_file}")
    endif()
    unset(conan_watched_std_variable)
endfunction()

message(STATUS "Conan toolchain: C++ Standard 14 with extensions OFF")
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
variable_watch(CMAKE_CXX_STANDARD conan_modify_std_watch)


########## 'parallel' block #############
# Define VS paralell build /MP flags

string(APPEND CONAN_CXX_FLAGS " /MP20")
string(APPEND CONAN_C_FLAGS " /MP20")


########## 'extra_flags' block #############
# Include extra C++, C and linker flags from configuration tools.build:<type>flags
# and from CMakeToolchain.extra_<type>_flags

# Conan conf flags start: Release
# Conan conf flags end


########## 'cmake_flags_init' block #############
# Define CMAKE_<XXX>_FLAGS from CONAN_<XXX>_FLAGS

foreach(config IN LISTS CMAKE_CONFIGURATION_TYPES)
    string(TOUPPER ${config} config)
    if(DEFINED CONAN_CXX_FLAGS_${config})
      string(APPEND CMAKE_CXX_FLAGS_${config}_INIT " ${CONAN_CXX_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_C_FLAGS_${config})
      string(APPEND CMAKE_C_FLAGS_${config}_INIT " ${CONAN_C_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_SHARED_LINKER_FLAGS_${config})
      string(APPEND CMAKE_SHARED_LINKER_FLAGS_${config}_INIT " ${CONAN_SHARED_LINKER_FLAGS_${config}}")
    endif()
    if(DEFINED CONAN_EXE_LINKER_FLAGS_${config})
      string(APPEND CMAKE_EXE_LINKER_FLAGS_${config}_INIT " ${CONAN_EXE_LINKER_FLAGS_${config}}")
    endif()
endforeach()

if(DEFINED CONAN_CXX_FLAGS)
  string(APPEND CMAKE_CXX_FLAGS_INIT " ${CONAN_CXX_FLAGS}")
endif()
if(DEFINED CONAN_C_FLAGS)
  string(APPEND CMAKE_C_FLAGS_INIT " ${CONAN_C_FLAGS}")
endif()
if(DEFINED CONAN_SHARED_LINKER_FLAGS)
  string(APPEND CMAKE_SHARED_LINKER_FLAGS_INIT " ${CONAN_SHARED_LINKER_FLAGS}")
endif()
if(DEFINED CONAN_EXE_LINKER_FLAGS)
  string(APPEND CMAKE_EXE_LINKER_FLAGS_INIT " ${CONAN_EXE_LINKER_FLAGS}")
endif()


########## 'extra_variables' block #############
# Definition of extra CMake variables from tools.cmake.cmaketoolchain:extra_variables



########## 'try_compile' block #############
# Blocks after this one will not be added when running CMake try/checks

get_property( _CMAKE_IN_TRY_COMPILE GLOBAL PROPERTY IN_TRY_COMPILE )
if(_CMAKE_IN_TRY_COMPILE)
    message(STATUS "Running toolchain IN_TRY_COMPILE")
    return()
endif()


########## 'find_paths' block #############
# Define paths to find packages, programs, libraries, etc.
if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/conan_cmakedeps_paths.cmake")
  message(STATUS "Conan toolchain: Including CMakeDeps generated conan_cmakedeps_paths.cmake")
  include("${CMAKE_CURRENT_LIST_DIR}/conan_cmakedeps_paths.cmake")
else()

set(CMAKE_FIND_PACKAGE_PREFER_CONFIG ON)

# Definition of CMAKE_MODULE_PATH
list(PREPEND CMAKE_MODULE_PATH "C:/Users/MH.Rezaiy_110/.conan2/p/aws-s54d5aebbc6823/p/res/cmake" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-s54d5aebbc6823/p/res/toolchains" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c596c3fa4abdde/p/lib/cmake")
# the generators folder (where conan generates files, like this toolchain)
list(PREPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

# Definition of CMAKE_PREFIX_PATH, CMAKE_XXXXX_PATH
# The explicitly defined "builddirs" of "host" context dependencies must be in PREFIX_PATH
list(PREPEND CMAKE_PREFIX_PATH "C:/Users/MH.Rezaiy_110/.conan2/p/aws-s54d5aebbc6823/p/res/cmake" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-s54d5aebbc6823/p/res/toolchains" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c596c3fa4abdde/p/lib/cmake")
# The Conan local "generators" folder, where this toolchain is saved.
list(PREPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_LIST_DIR} )
list(PREPEND CMAKE_LIBRARY_PATH "C:/Users/MH.Rezaiy_110/.conan2/p/aws-s54d5aebbc6823/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-cca8f8953bb9d5/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-cc54ab4935d35d/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-cb8bb937ce6f5d/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c20714f59880ac/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c8b7c34c08e6ee/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c57114c4ef383e/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c3e8ad6ee1cbc2/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c71ac73f9b54ad/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c284451a7c8a11/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c957e4a835f786/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c52ef692af373e/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c596c3fa4abdde/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/zlib0e715158c1dfd/p/lib")
list(PREPEND CMAKE_INCLUDE_PATH "C:/Users/MH.Rezaiy_110/.conan2/p/aws-s54d5aebbc6823/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-cca8f8953bb9d5/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-cc54ab4935d35d/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-cb8bb937ce6f5d/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c20714f59880ac/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c8b7c34c08e6ee/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c57114c4ef383e/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c3e8ad6ee1cbc2/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c71ac73f9b54ad/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c284451a7c8a11/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c957e4a835f786/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c52ef692af373e/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/aws-c596c3fa4abdde/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/zlib0e715158c1dfd/p/include")
set(CONAN_RUNTIME_LIB_DIRS "$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/aws-s54d5aebbc6823/p/bin>" "$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/aws-cca8f8953bb9d5/p/bin>" "$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/aws-cc54ab4935d35d/p/bin>" "$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/aws-cb8bb937ce6f5d/p/bin>" "$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/aws-c20714f59880ac/p/bin>" "$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/aws-c8b7c34c08e6ee/p/bin>" "$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/aws-c57114c4ef383e/p/bin>" "$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/aws-c3e8ad6ee1cbc2/p/bin>" "$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/aws-c71ac73f9b54ad/p/bin>" "$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/aws-c284451a7c8a11/p/bin>" "$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/aws-c957e4a835f786/p/bin>" "$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/aws-c52ef692af373e/p/bin>" "$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/aws-c596c3fa4abdde/p/bin>" "$<$<CONFIG:Release>:C:/Users/MH.Rezaiy_110/.conan2/p/zlib0e715158c1dfd/p/bin>" )

endif()


########## 'pkg_config' block #############
# Define pkg-config from 'tools.gnu:pkg_config' executable and paths

if (DEFINED ENV{PKG_CONFIG_PATH})
set(ENV{PKG_CONFIG_PATH} "${CMAKE_CURRENT_LIST_DIR};$ENV{PKG_CONFIG_PATH}")
else()
set(ENV{PKG_CONFIG_PATH} "${CMAKE_CURRENT_LIST_DIR};")
endif()


########## 'rpath' block #############
# Defining CMAKE_SKIP_RPATH



########## 'output_dirs' block #############
# Definition of CMAKE_INSTALL_XXX folders

set(CMAKE_INSTALL_BINDIR "bin")
set(CMAKE_INSTALL_SBINDIR "bin")
set(CMAKE_INSTALL_LIBEXECDIR "bin")
set(CMAKE_INSTALL_LIBDIR "lib")
set(CMAKE_INSTALL_INCLUDEDIR "include")
set(CMAKE_INSTALL_OLDINCLUDEDIR "include")


########## 'variables' block #############
# Definition of CMake variables from CMakeToolchain.variables values

# Variables
# Variables  per configuration



########## 'preprocessor' block #############
# Preprocessor definitions from CMakeToolchain.preprocessor_definitions values

# Preprocessor definitions per configuration



if(CMAKE_POLICY_DEFAULT_CMP0091)  # Avoid unused and not-initialized warnings
endif()
