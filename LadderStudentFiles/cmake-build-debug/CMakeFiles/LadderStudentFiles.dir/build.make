# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/LadderStudentFiles.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/LadderStudentFiles.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LadderStudentFiles.dir/flags.make

CMakeFiles/LadderStudentFiles.dir/Dictionary.cpp.o: CMakeFiles/LadderStudentFiles.dir/flags.make
CMakeFiles/LadderStudentFiles.dir/Dictionary.cpp.o: ../Dictionary.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LadderStudentFiles.dir/Dictionary.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LadderStudentFiles.dir/Dictionary.cpp.o -c "/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles/Dictionary.cpp"

CMakeFiles/LadderStudentFiles.dir/Dictionary.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LadderStudentFiles.dir/Dictionary.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles/Dictionary.cpp" > CMakeFiles/LadderStudentFiles.dir/Dictionary.cpp.i

CMakeFiles/LadderStudentFiles.dir/Dictionary.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LadderStudentFiles.dir/Dictionary.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles/Dictionary.cpp" -o CMakeFiles/LadderStudentFiles.dir/Dictionary.cpp.s

CMakeFiles/LadderStudentFiles.dir/main.cpp.o: CMakeFiles/LadderStudentFiles.dir/flags.make
CMakeFiles/LadderStudentFiles.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/LadderStudentFiles.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LadderStudentFiles.dir/main.cpp.o -c "/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles/main.cpp"

CMakeFiles/LadderStudentFiles.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LadderStudentFiles.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles/main.cpp" > CMakeFiles/LadderStudentFiles.dir/main.cpp.i

CMakeFiles/LadderStudentFiles.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LadderStudentFiles.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles/main.cpp" -o CMakeFiles/LadderStudentFiles.dir/main.cpp.s

# Object files for target LadderStudentFiles
LadderStudentFiles_OBJECTS = \
"CMakeFiles/LadderStudentFiles.dir/Dictionary.cpp.o" \
"CMakeFiles/LadderStudentFiles.dir/main.cpp.o"

# External object files for target LadderStudentFiles
LadderStudentFiles_EXTERNAL_OBJECTS =

LadderStudentFiles: CMakeFiles/LadderStudentFiles.dir/Dictionary.cpp.o
LadderStudentFiles: CMakeFiles/LadderStudentFiles.dir/main.cpp.o
LadderStudentFiles: CMakeFiles/LadderStudentFiles.dir/build.make
LadderStudentFiles: CMakeFiles/LadderStudentFiles.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable LadderStudentFiles"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LadderStudentFiles.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LadderStudentFiles.dir/build: LadderStudentFiles
.PHONY : CMakeFiles/LadderStudentFiles.dir/build

CMakeFiles/LadderStudentFiles.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LadderStudentFiles.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LadderStudentFiles.dir/clean

CMakeFiles/LadderStudentFiles.dir/depend:
	cd "/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles" "/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles" "/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles/cmake-build-debug" "/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles/cmake-build-debug" "/Users/matthewv/Desktop/Education/Sonoma Files/Classes/CS 315/project_one/LadderStudentFiles/cmake-build-debug/CMakeFiles/LadderStudentFiles.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/LadderStudentFiles.dir/depend

