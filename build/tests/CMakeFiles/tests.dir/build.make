# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/tests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/tests.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/tests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/tests.dir/flags.make

tests/CMakeFiles/tests.dir/src/tests.cpp.o: tests/CMakeFiles/tests.dir/flags.make
tests/CMakeFiles/tests.dir/src/tests.cpp.o: /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/tests/src/tests.cpp
tests/CMakeFiles/tests.dir/src/tests.cpp.o: tests/CMakeFiles/tests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/tests.dir/src/tests.cpp.o"
	cd /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/tests.dir/src/tests.cpp.o -MF CMakeFiles/tests.dir/src/tests.cpp.o.d -o CMakeFiles/tests.dir/src/tests.cpp.o -c /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/tests/src/tests.cpp

tests/CMakeFiles/tests.dir/src/tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tests.dir/src/tests.cpp.i"
	cd /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/tests/src/tests.cpp > CMakeFiles/tests.dir/src/tests.cpp.i

tests/CMakeFiles/tests.dir/src/tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tests.dir/src/tests.cpp.s"
	cd /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/tests/src/tests.cpp -o CMakeFiles/tests.dir/src/tests.cpp.s

# Object files for target tests
tests_OBJECTS = \
"CMakeFiles/tests.dir/src/tests.cpp.o"

# External object files for target tests
tests_EXTERNAL_OBJECTS =

tests/tests: tests/CMakeFiles/tests.dir/src/tests.cpp.o
tests/tests: tests/CMakeFiles/tests.dir/build.make
tests/tests: libmylib.a
tests/tests: tests/CMakeFiles/tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tests"
	cd /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/tests.dir/build: tests/tests
.PHONY : tests/CMakeFiles/tests.dir/build

tests/CMakeFiles/tests.dir/clean:
	cd /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/tests.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/tests.dir/clean

tests/CMakeFiles/tests.dir/depend:
	cd /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/tests /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/build /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/build/tests /home/laust/prog-assignments/assignment-12-PeterLaustAlmvig/build/tests/CMakeFiles/tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/tests.dir/depend

