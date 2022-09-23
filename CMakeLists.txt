cmake_minimum_required(VERSION 3.10)

# set the project name
project(CMake)

# The version number.
set (VERSION_MAJOR 1)
set (VERSION_MINOR 0)

include_directories("${PROJECT_BINARY_DIR}")
configure_file ("${PROJECT_SOURCE_DIR}/CMakeConfig.h.in"
                "${PROJECT_BINARY_DIR}/CMakeConfig.h"
                )

# add the executable
add_executable(CMake main.cpp)