# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/khiem/Dropbox/Projects/Personal/cpp-cmake

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/khiem/Dropbox/Projects/Personal/cpp-cmake/build

# Include any dependencies generated for this target.
include CMakeFiles/CMake.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CMake.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CMake.dir/flags.make

CMakeFiles/CMake.dir/main.cpp.o: CMakeFiles/CMake.dir/flags.make
CMakeFiles/CMake.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/khiem/Dropbox/Projects/Personal/cpp-cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CMake.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CMake.dir/main.cpp.o -c /home/khiem/Dropbox/Projects/Personal/cpp-cmake/main.cpp

CMakeFiles/CMake.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CMake.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/khiem/Dropbox/Projects/Personal/cpp-cmake/main.cpp > CMakeFiles/CMake.dir/main.cpp.i

CMakeFiles/CMake.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CMake.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/khiem/Dropbox/Projects/Personal/cpp-cmake/main.cpp -o CMakeFiles/CMake.dir/main.cpp.s

# Object files for target CMake
CMake_OBJECTS = \
"CMakeFiles/CMake.dir/main.cpp.o"

# External object files for target CMake
CMake_EXTERNAL_OBJECTS =

CMake: CMakeFiles/CMake.dir/main.cpp.o
CMake: CMakeFiles/CMake.dir/build.make
CMake: CMakeFiles/CMake.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/khiem/Dropbox/Projects/Personal/cpp-cmake/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CMake"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CMake.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CMake.dir/build: CMake

.PHONY : CMakeFiles/CMake.dir/build

CMakeFiles/CMake.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CMake.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CMake.dir/clean

CMakeFiles/CMake.dir/depend:
	cd /home/khiem/Dropbox/Projects/Personal/cpp-cmake/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/khiem/Dropbox/Projects/Personal/cpp-cmake /home/khiem/Dropbox/Projects/Personal/cpp-cmake /home/khiem/Dropbox/Projects/Personal/cpp-cmake/build /home/khiem/Dropbox/Projects/Personal/cpp-cmake/build /home/khiem/Dropbox/Projects/Personal/cpp-cmake/build/CMakeFiles/CMake.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CMake.dir/depend

