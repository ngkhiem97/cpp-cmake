cmake_minimum_required(VERSION 3.10)

# set the project name
project(CMake)

# The version number.
set (VERSION_MAJOR 1)
set (VERSION_MINOR 0)

# should we use our own math functions
option(USE_MYMATH "Use tutorial provided math implementation" ON)

if (USE_MYMATH)
    # add the MathFunctions library
    include_directories("${PROJECT_SOURCE_DIR}/MathFunctions")
    add_subdirectory (MathFunctions)
    set (EXTRA_LIBS ${EXTRA_LIBS} MathFunctions)
endif ()

# add the CMakeConfig library
include_directories("${PROJECT_BINARY_DIR}")
configure_file("${PROJECT_SOURCE_DIR}/CMakeConfig.h.in"
               "${PROJECT_BINARY_DIR}/CMakeConfig.h"
               )

# add the executable
add_executable(CMake main.cpp)
target_link_libraries (CMake  ${EXTRA_LIBS})