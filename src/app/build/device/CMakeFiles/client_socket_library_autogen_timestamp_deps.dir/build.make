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

# Utility rule file for client_socket_library_autogen_timestamp_deps.

# Include any custom commands dependencies for this target.
include device/CMakeFiles/client_socket_library_autogen_timestamp_deps.dir/compiler_depend.make

# Include the progress variables for this target.
include device/CMakeFiles/client_socket_library_autogen_timestamp_deps.dir/progress.make

device/CMakeFiles/client_socket_library_autogen_timestamp_deps: /opt/homebrew/lib/QtNetwork.framework/Versions/A/QtNetwork
device/CMakeFiles/client_socket_library_autogen_timestamp_deps: /opt/homebrew/share/qt/libexec/moc
device/CMakeFiles/client_socket_library_autogen_timestamp_deps: /opt/homebrew/lib/QtCore.framework/Versions/A/QtCore
device/CMakeFiles/client_socket_library_autogen_timestamp_deps: /opt/homebrew/lib/QtWidgets.framework/Versions/A/QtWidgets
device/CMakeFiles/client_socket_library_autogen_timestamp_deps: /opt/homebrew/share/qt/libexec/uic

client_socket_library_autogen_timestamp_deps: device/CMakeFiles/client_socket_library_autogen_timestamp_deps
client_socket_library_autogen_timestamp_deps: device/CMakeFiles/client_socket_library_autogen_timestamp_deps.dir/build.make
.PHONY : client_socket_library_autogen_timestamp_deps

# Rule to build all files generated by this target.
device/CMakeFiles/client_socket_library_autogen_timestamp_deps.dir/build: client_socket_library_autogen_timestamp_deps
.PHONY : device/CMakeFiles/client_socket_library_autogen_timestamp_deps.dir/build

device/CMakeFiles/client_socket_library_autogen_timestamp_deps.dir/clean:
	cd /Users/test/Documents/network_programming/src/app/build/device && $(CMAKE_COMMAND) -P CMakeFiles/client_socket_library_autogen_timestamp_deps.dir/cmake_clean.cmake
.PHONY : device/CMakeFiles/client_socket_library_autogen_timestamp_deps.dir/clean

device/CMakeFiles/client_socket_library_autogen_timestamp_deps.dir/depend:
	cd /Users/test/Documents/network_programming/src/app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/test/Documents/network_programming/src /Users/test/Documents/network_programming/src/device /Users/test/Documents/network_programming/src/app/build /Users/test/Documents/network_programming/src/app/build/device /Users/test/Documents/network_programming/src/app/build/device/CMakeFiles/client_socket_library_autogen_timestamp_deps.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : device/CMakeFiles/client_socket_library_autogen_timestamp_deps.dir/depend
