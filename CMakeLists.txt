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

    # does this system provide the log and exp functions?
    include(CheckCXXSourceCompiles)
    check_cxx_source_compiles("
    #include <cmath>
    int main() {
        std::log(1.0);
        return 0;
    }
    " HAVE_LOG)
    check_cxx_source_compiles("
    #include <cmath>
    int main() {
        std::exp(1.0);
        return 0;
    }
    " HAVE_EXP)
    if(HAVE_LOG AND HAVE_EXP)
        target_compile_definitions(MathFunctions
                                   PRIVATE "HAVE_LOG" "HAVE_EXP")
    endif()
endif ()

# add the CMakeConfig library
configure_file("${PROJECT_SOURCE_DIR}/CMakeConfig.h.in"
               "${PROJECT_BINARY_DIR}/CMakeConfig.h"
               )
include_directories("${PROJECT_BINARY_DIR}")

# add the executable
add_executable(CMake main.cpp)
target_link_libraries (CMake  ${EXTRA_LIBS})

# add the install targets
install (TARGETS CMake DESTINATION bin)
install (FILES "${PROJECT_BINARY_DIR}/CMakeConfig.h"
         DESTINATION include)

# enable testing
enable_testing ()

# does the application run
add_test (CMakeRuns CMake 25)

# does it sqrt of 25
add_test (CMakeComp25 CMake 25)
set_tests_properties (CMakeComp25
  PROPERTIES PASS_REGULAR_EXPRESSION "25 is 5"
  )

# does it handle negative numbers
add_test (CMakeNegative CMake -25)
set_tests_properties (CMakeNegative
  PROPERTIES PASS_REGULAR_EXPRESSION "-25 is 0"
  )

# does it handle small numbers
add_test (CMakeSmall CMake 0.0001)
set_tests_properties (CMakeSmall
  PROPERTIES PASS_REGULAR_EXPRESSION "0.0001 is 0.01"
  )

# does the usage message work?
add_test (CMakeUsage CMake)
set_tests_properties (CMakeUsage
  PROPERTIES PASS_REGULAR_EXPRESSION "Usage:.*number"
  )

#define a macro to simplify adding tests
macro (do_test arg result)
    add_test (CMakeComp${arg} CMake ${arg})
    set_tests_properties (CMakeComp${arg}
    PROPERTIES PASS_REGULAR_EXPRESSION ${result}
    )
endmacro ()

do_test(4 "4 is 2")
do_test(9 "9 is 3")
do_test(5 "5 is 2.236")
do_test(7 "7 is 2.645")
do_test(25 "25 is 5")
do_test(-25 "-25 is (-nan|nan|0)")
do_test(0.0001 "0.0001 is 0.01")

# setup installer
include(InstallRequiredSystemLibraries)
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/MIT-License.txt")
set(CPACK_PACKAGE_VERSION_MAJOR "${VERSION_MAJOR}")
set(CPACK_PACKAGE_VERSION_MINOR "${VERSION_MINOR}")
include(CPack)