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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/test/Documents/network_programming/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/test/Documents/network_programming/src/app/build

# Include any dependencies generated for this target.
include app/CMakeFiles/network.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include app/CMakeFiles/network.dir/compiler_depend.make

# Include the progress variables for this target.
include app/CMakeFiles/network.dir/progress.make

# Include the compile flags for this target's objects.
include app/CMakeFiles/network.dir/flags.make

app/CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.o: app/CMakeFiles/network.dir/flags.make
app/CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.o: app/network_autogen/mocs_compilation.cpp
app/CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.o: app/CMakeFiles/network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/test/Documents/network_programming/src/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object app/CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.o"
	cd /Users/test/Documents/network_programming/src/app/build/app && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT app/CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.o -MF CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.o -c /Users/test/Documents/network_programming/src/app/build/app/network_autogen/mocs_compilation.cpp

app/CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.i"
	cd /Users/test/Documents/network_programming/src/app/build/app && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/test/Documents/network_programming/src/app/build/app/network_autogen/mocs_compilation.cpp > CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.i

app/CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.s"
	cd /Users/test/Documents/network_programming/src/app/build/app && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/test/Documents/network_programming/src/app/build/app/network_autogen/mocs_compilation.cpp -o CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.s

app/CMakeFiles/network.dir/main.cpp.o: app/CMakeFiles/network.dir/flags.make
app/CMakeFiles/network.dir/main.cpp.o: /Users/test/Documents/network_programming/src/app/main.cpp
app/CMakeFiles/network.dir/main.cpp.o: app/CMakeFiles/network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/test/Documents/network_programming/src/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object app/CMakeFiles/network.dir/main.cpp.o"
	cd /Users/test/Documents/network_programming/src/app/build/app && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT app/CMakeFiles/network.dir/main.cpp.o -MF CMakeFiles/network.dir/main.cpp.o.d -o CMakeFiles/network.dir/main.cpp.o -c /Users/test/Documents/network_programming/src/app/main.cpp

app/CMakeFiles/network.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/network.dir/main.cpp.i"
	cd /Users/test/Documents/network_programming/src/app/build/app && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/test/Documents/network_programming/src/app/main.cpp > CMakeFiles/network.dir/main.cpp.i

app/CMakeFiles/network.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/network.dir/main.cpp.s"
	cd /Users/test/Documents/network_programming/src/app/build/app && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/test/Documents/network_programming/src/app/main.cpp -o CMakeFiles/network.dir/main.cpp.s

app/CMakeFiles/network.dir/main_window.cpp.o: app/CMakeFiles/network.dir/flags.make
app/CMakeFiles/network.dir/main_window.cpp.o: /Users/test/Documents/network_programming/src/app/main_window.cpp
app/CMakeFiles/network.dir/main_window.cpp.o: app/CMakeFiles/network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/test/Documents/network_programming/src/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object app/CMakeFiles/network.dir/main_window.cpp.o"
	cd /Users/test/Documents/network_programming/src/app/build/app && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT app/CMakeFiles/network.dir/main_window.cpp.o -MF CMakeFiles/network.dir/main_window.cpp.o.d -o CMakeFiles/network.dir/main_window.cpp.o -c /Users/test/Documents/network_programming/src/app/main_window.cpp

app/CMakeFiles/network.dir/main_window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/network.dir/main_window.cpp.i"
	cd /Users/test/Documents/network_programming/src/app/build/app && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/test/Documents/network_programming/src/app/main_window.cpp > CMakeFiles/network.dir/main_window.cpp.i

app/CMakeFiles/network.dir/main_window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/network.dir/main_window.cpp.s"
	cd /Users/test/Documents/network_programming/src/app/build/app && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/test/Documents/network_programming/src/app/main_window.cpp -o CMakeFiles/network.dir/main_window.cpp.s

# Object files for target network
network_OBJECTS = \
"CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/network.dir/main.cpp.o" \
"CMakeFiles/network.dir/main_window.cpp.o"

# External object files for target network
network_EXTERNAL_OBJECTS =

app/network.app/Contents/MacOS/network: app/CMakeFiles/network.dir/network_autogen/mocs_compilation.cpp.o
app/network.app/Contents/MacOS/network: app/CMakeFiles/network.dir/main.cpp.o
app/network.app/Contents/MacOS/network: app/CMakeFiles/network.dir/main_window.cpp.o
app/network.app/Contents/MacOS/network: app/CMakeFiles/network.dir/build.make
app/network.app/Contents/MacOS/network: device/libdevice_library.a
app/network.app/Contents/MacOS/network: /opt/homebrew/lib/QtWidgets.framework/Versions/A/QtWidgets
app/network.app/Contents/MacOS/network: /opt/homebrew/lib/QtGui.framework/Versions/A/QtGui
app/network.app/Contents/MacOS/network: /opt/homebrew/lib/QtNetwork.framework/Versions/A/QtNetwork
app/network.app/Contents/MacOS/network: /opt/homebrew/lib/QtCore.framework/Versions/A/QtCore
app/network.app/Contents/MacOS/network: app/CMakeFiles/network.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/test/Documents/network_programming/src/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable network.app/Contents/MacOS/network"
	cd /Users/test/Documents/network_programming/src/app/build/app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/network.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
app/CMakeFiles/network.dir/build: app/network.app/Contents/MacOS/network
.PHONY : app/CMakeFiles/network.dir/build

app/CMakeFiles/network.dir/clean:
	cd /Users/test/Documents/network_programming/src/app/build/app && $(CMAKE_COMMAND) -P CMakeFiles/network.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/network.dir/clean

app/CMakeFiles/network.dir/depend:
	cd /Users/test/Documents/network_programming/src/app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/test/Documents/network_programming/src /Users/test/Documents/network_programming/src/app /Users/test/Documents/network_programming/src/app/build /Users/test/Documents/network_programming/src/app/build/app /Users/test/Documents/network_programming/src/app/build/app/CMakeFiles/network.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : app/CMakeFiles/network.dir/depend

