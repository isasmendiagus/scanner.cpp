# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/Projects/SCANOSS/scanner.cpp/bindings/python

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/Projects/SCANOSS/scanner.cpp/bindings/python/build

# Include any dependencies generated for this target.
include CMakeFiles/scanoss_python.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/scanoss_python.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/scanoss_python.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/scanoss_python.dir/flags.make

# Object files for target scanoss_python
scanoss_python_OBJECTS =

# External object files for target scanoss_python
scanoss_python_EXTERNAL_OBJECTS =

python/_scanoss.so: CMakeFiles/scanoss_python.dir/build.make
python/_scanoss.so: /home/ubuntu/.pyenv/versions/3.8.19/lib/libpython3.8.so
python/_scanoss.so: CMakeFiles/scanoss_python.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ubuntu/Projects/SCANOSS/scanner.cpp/bindings/python/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX shared module python/_scanoss.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scanoss_python.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/scanoss_python.dir/build: python/_scanoss.so
.PHONY : CMakeFiles/scanoss_python.dir/build

CMakeFiles/scanoss_python.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/scanoss_python.dir/cmake_clean.cmake
.PHONY : CMakeFiles/scanoss_python.dir/clean

CMakeFiles/scanoss_python.dir/depend:
	cd /home/ubuntu/Projects/SCANOSS/scanner.cpp/bindings/python/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Projects/SCANOSS/scanner.cpp/bindings/python /home/ubuntu/Projects/SCANOSS/scanner.cpp/bindings/python /home/ubuntu/Projects/SCANOSS/scanner.cpp/bindings/python/build /home/ubuntu/Projects/SCANOSS/scanner.cpp/bindings/python/build /home/ubuntu/Projects/SCANOSS/scanner.cpp/bindings/python/build/CMakeFiles/scanoss_python.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/scanoss_python.dir/depend

