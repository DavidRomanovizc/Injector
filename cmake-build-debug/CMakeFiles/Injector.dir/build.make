# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Code\Injector

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Code\Injector\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Injector.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/Injector.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Injector.dir/flags.make

CMakeFiles/Injector.dir/src/CheatInjector.cpp.obj: CMakeFiles/Injector.dir/flags.make
CMakeFiles/Injector.dir/src/CheatInjector.cpp.obj: CMakeFiles/Injector.dir/includes_CXX.rsp
CMakeFiles/Injector.dir/src/CheatInjector.cpp.obj: ../src/CheatInjector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Code\Injector\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Injector.dir/src/CheatInjector.cpp.obj"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Injector.dir\src\CheatInjector.cpp.obj -c D:\Code\Injector\src\CheatInjector.cpp

CMakeFiles/Injector.dir/src/CheatInjector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Injector.dir/src/CheatInjector.cpp.i"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Code\Injector\src\CheatInjector.cpp > CMakeFiles\Injector.dir\src\CheatInjector.cpp.i

CMakeFiles/Injector.dir/src/CheatInjector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Injector.dir/src/CheatInjector.cpp.s"
	C:\MinGW\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Code\Injector\src\CheatInjector.cpp -o CMakeFiles\Injector.dir\src\CheatInjector.cpp.s

# Object files for target Injector
Injector_OBJECTS = \
"CMakeFiles/Injector.dir/src/CheatInjector.cpp.obj"

# External object files for target Injector
Injector_EXTERNAL_OBJECTS =

Injector.exe: CMakeFiles/Injector.dir/src/CheatInjector.cpp.obj
Injector.exe: CMakeFiles/Injector.dir/build.make
Injector.exe: CMakeFiles/Injector.dir/linklibs.rsp
Injector.exe: CMakeFiles/Injector.dir/objects1.rsp
Injector.exe: CMakeFiles/Injector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Code\Injector\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Injector.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Injector.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Injector.dir/build: Injector.exe
.PHONY : CMakeFiles/Injector.dir/build

CMakeFiles/Injector.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Injector.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Injector.dir/clean

CMakeFiles/Injector.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Code\Injector D:\Code\Injector D:\Code\Injector\cmake-build-debug D:\Code\Injector\cmake-build-debug D:\Code\Injector\cmake-build-debug\CMakeFiles\Injector.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Injector.dir/depend
