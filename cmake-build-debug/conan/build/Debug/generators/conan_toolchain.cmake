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





########## 'compilers' block #############

set(CMAKE_C_COMPILER "C:/Program Files/Microsoft Visual Studio/2022/Enterprise/VC/Tools/MSVC/14.41.34120/bin/Hostx64/x64/cl.exe")
set(CMAKE_CXX_COMPILER "C:/Program Files/Microsoft Visual Studio/2022/Enterprise/VC/Tools/MSVC/14.41.34120/bin/Hostx64/x64/cl.exe")
set(CMAKE_RC_COMPILER "C:/Program Files (x86)/Windows Kits/10/bin/10.0.26100.0/x64/rc.exe")


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
message(STATUS "Conan toolchain: Setting CMAKE_MSVC_RUNTIME_LIBRARY=$<$<CONFIG:Debug>:MultiThreadedDebugDLL>")
set(CMAKE_MSVC_RUNTIME_LIBRARY "$<$<CONFIG:Debug>:MultiThreadedDebugDLL>")


########## 'cppstd' block #############
# Define the C++ and C standards from 'compiler.cppstd' and 'compiler.cstd'

function(conan_modify_std_watch variable access value current_list_file stack)
    set(conan_watched_std_variable "17")
    if (${variable} STREQUAL "CMAKE_C_STANDARD")
        set(conan_watched_std_variable "")
    endif()
    if ("${access}" STREQUAL "MODIFIED_ACCESS" AND NOT "${value}" STREQUAL "${conan_watched_std_variable}")
        message(STATUS "Warning: Standard ${variable} value defined in conan_toolchain.cmake to ${conan_watched_std_variable} has been modified to ${value} by ${current_list_file}")
    endif()
    unset(conan_watched_std_variable)
endfunction()

message(STATUS "Conan toolchain: C++ Standard 17 with extensions OFF")
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
variable_watch(CMAKE_CXX_STANDARD conan_modify_std_watch)


########## 'extra_flags' block #############
# Include extra C++, C and linker flags from configuration tools.build:<type>flags
# and from CMakeToolchain.extra_<type>_flags

# Conan conf flags start: 
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
list(PREPEND CMAKE_MODULE_PATH "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-sb5b8abf42e3e9/p/res/cmake" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-sb5b8abf42e3e9/p/res/toolchains" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-ccf3205e330142/p/lib/cmake")
# the generators folder (where conan generates files, like this toolchain)
list(PREPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

# Definition of CMAKE_PREFIX_PATH, CMAKE_XXXXX_PATH
# The explicitly defined "builddirs" of "host" context dependencies must be in PREFIX_PATH
list(PREPEND CMAKE_PREFIX_PATH "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-sb5b8abf42e3e9/p/res/cmake" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-sb5b8abf42e3e9/p/res/toolchains" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-ccf3205e330142/p/lib/cmake")
# The Conan local "generators" folder, where this toolchain is saved.
list(PREPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_LIST_DIR} )
list(PREPEND CMAKE_LIBRARY_PATH "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-sb5b8abf42e3e9/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c45fbdaa6e76aa/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c5a42842dd3312/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-cbc37069d07f81/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c23d189aa87827/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c676420a089adc/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-cdc6fcaef6838b/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-ce816765c546ed/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c8b1e128185577/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c5417c9b824195/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-cd4565dfa3ddb9/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-cbd3ace207cbbc/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-ccf3205e330142/p/lib" "C:/Users/MH.Rezaiy_110/.conan2/p/b/zlib58e549004aa4e/p/lib")
list(PREPEND CMAKE_INCLUDE_PATH "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-sb5b8abf42e3e9/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c45fbdaa6e76aa/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c5a42842dd3312/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-cbc37069d07f81/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c23d189aa87827/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c676420a089adc/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-cdc6fcaef6838b/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-ce816765c546ed/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c8b1e128185577/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c5417c9b824195/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-cd4565dfa3ddb9/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-cbd3ace207cbbc/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-ccf3205e330142/p/include" "C:/Users/MH.Rezaiy_110/.conan2/p/b/zlib58e549004aa4e/p/include")
set(CONAN_RUNTIME_LIB_DIRS "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-sb5b8abf42e3e9/p/bin" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c45fbdaa6e76aa/p/bin" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c5a42842dd3312/p/bin" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-cbc37069d07f81/p/bin" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c23d189aa87827/p/bin" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c676420a089adc/p/bin" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-cdc6fcaef6838b/p/bin" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-ce816765c546ed/p/bin" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c8b1e128185577/p/bin" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-c5417c9b824195/p/bin" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-cd4565dfa3ddb9/p/bin" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-cbd3ace207cbbc/p/bin" "C:/Users/MH.Rezaiy_110/.conan2/p/b/aws-ccf3205e330142/p/bin" "C:/Users/MH.Rezaiy_110/.conan2/p/b/zlib58e549004aa4e/p/bin" )

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
