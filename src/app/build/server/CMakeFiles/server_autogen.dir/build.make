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

# Utility rule file for server_autogen.

# Include any custom commands dependencies for this target.
include server/CMakeFiles/server_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include server/CMakeFiles/server_autogen.dir/progress.make

server/CMakeFiles/server_autogen: server/server_autogen/timestamp

server/server_autogen/timestamp: /opt/homebrew/share/qt/libexec/moc
server/server_autogen/timestamp: /opt/homebrew/share/qt/libexec/uic
server/server_autogen/timestamp: server/CMakeFiles/server_autogen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/test/Documents/network_programming/src/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target server"
	cd /Users/test/Documents/network_programming/src/app/build/server && /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake -E cmake_autogen /Users/test/Documents/network_programming/src/app/build/server/CMakeFiles/server_autogen.dir/AutogenInfo.json ""
	cd /Users/test/Documents/network_programming/src/app/build/server && /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake -E touch /Users/test/Documents/network_programming/src/app/build/server/server_autogen/timestamp

server_autogen: server/CMakeFiles/server_autogen
server_autogen: server/server_autogen/timestamp
server_autogen: server/CMakeFiles/server_autogen.dir/build.make
.PHONY : server_autogen

# Rule to build all files generated by this target.
server/CMakeFiles/server_autogen.dir/build: server_autogen
.PHONY : server/CMakeFiles/server_autogen.dir/build

server/CMakeFiles/server_autogen.dir/clean:
	cd /Users/test/Documents/network_programming/src/app/build/server && $(CMAKE_COMMAND) -P CMakeFiles/server_autogen.dir/cmake_clean.cmake
.PHONY : server/CMakeFiles/server_autogen.dir/clean

server/CMakeFiles/server_autogen.dir/depend:
	cd /Users/test/Documents/network_programming/src/app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/test/Documents/network_programming/src /Users/test/Documents/network_programming/src/server /Users/test/Documents/network_programming/src/app/build /Users/test/Documents/network_programming/src/app/build/server /Users/test/Documents/network_programming/src/app/build/server/CMakeFiles/server_autogen.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : server/CMakeFiles/server_autogen.dir/depend

