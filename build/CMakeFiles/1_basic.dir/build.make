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
CMAKE_SOURCE_DIR = /home/ubuntu/Projects/MYSELF/C++/1-basic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/Projects/MYSELF/C++/1-basic/build

# Include any dependencies generated for this target.
include CMakeFiles/1_basic.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/1_basic.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/1_basic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/1_basic.dir/flags.make

CMakeFiles/1_basic.dir/main.cpp.o: CMakeFiles/1_basic.dir/flags.make
CMakeFiles/1_basic.dir/main.cpp.o: /home/ubuntu/Projects/MYSELF/C++/1-basic/main.cpp
CMakeFiles/1_basic.dir/main.cpp.o: CMakeFiles/1_basic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/Projects/MYSELF/C++/1-basic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/1_basic.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/1_basic.dir/main.cpp.o -MF CMakeFiles/1_basic.dir/main.cpp.o.d -o CMakeFiles/1_basic.dir/main.cpp.o -c /home/ubuntu/Projects/MYSELF/C++/1-basic/main.cpp

CMakeFiles/1_basic.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/1_basic.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Projects/MYSELF/C++/1-basic/main.cpp > CMakeFiles/1_basic.dir/main.cpp.i

CMakeFiles/1_basic.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/1_basic.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Projects/MYSELF/C++/1-basic/main.cpp -o CMakeFiles/1_basic.dir/main.cpp.s

CMakeFiles/1_basic.dir/winnowing.c.o: CMakeFiles/1_basic.dir/flags.make
CMakeFiles/1_basic.dir/winnowing.c.o: /home/ubuntu/Projects/MYSELF/C++/1-basic/winnowing.c
CMakeFiles/1_basic.dir/winnowing.c.o: CMakeFiles/1_basic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ubuntu/Projects/MYSELF/C++/1-basic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/1_basic.dir/winnowing.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/1_basic.dir/winnowing.c.o -MF CMakeFiles/1_basic.dir/winnowing.c.o.d -o CMakeFiles/1_basic.dir/winnowing.c.o -c /home/ubuntu/Projects/MYSELF/C++/1-basic/winnowing.c

CMakeFiles/1_basic.dir/winnowing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/1_basic.dir/winnowing.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Projects/MYSELF/C++/1-basic/winnowing.c > CMakeFiles/1_basic.dir/winnowing.c.i

CMakeFiles/1_basic.dir/winnowing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/1_basic.dir/winnowing.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Projects/MYSELF/C++/1-basic/winnowing.c -o CMakeFiles/1_basic.dir/winnowing.c.s

# Object files for target 1_basic
1_basic_OBJECTS = \
"CMakeFiles/1_basic.dir/main.cpp.o" \
"CMakeFiles/1_basic.dir/winnowing.c.o"

# External object files for target 1_basic
1_basic_EXTERNAL_OBJECTS =

1_basic: CMakeFiles/1_basic.dir/main.cpp.o
1_basic: CMakeFiles/1_basic.dir/winnowing.c.o
1_basic: CMakeFiles/1_basic.dir/build.make
1_basic: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.83.0
1_basic: CMakeFiles/1_basic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ubuntu/Projects/MYSELF/C++/1-basic/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable 1_basic"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/1_basic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/1_basic.dir/build: 1_basic
.PHONY : CMakeFiles/1_basic.dir/build

CMakeFiles/1_basic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/1_basic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/1_basic.dir/clean

CMakeFiles/1_basic.dir/depend:
	cd /home/ubuntu/Projects/MYSELF/C++/1-basic/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Projects/MYSELF/C++/1-basic /home/ubuntu/Projects/MYSELF/C++/1-basic /home/ubuntu/Projects/MYSELF/C++/1-basic/build /home/ubuntu/Projects/MYSELF/C++/1-basic/build /home/ubuntu/Projects/MYSELF/C++/1-basic/build/CMakeFiles/1_basic.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/1_basic.dir/depend

