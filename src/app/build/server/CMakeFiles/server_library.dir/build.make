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
include server/CMakeFiles/server_library.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include server/CMakeFiles/server_library.dir/compiler_depend.make

# Include the progress variables for this target.
include server/CMakeFiles/server_library.dir/progress.make

# Include the compile flags for this target's objects.
include server/CMakeFiles/server_library.dir/flags.make

server/CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.o: server/CMakeFiles/server_library.dir/flags.make
server/CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.o: server/server_library_autogen/mocs_compilation.cpp
server/CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.o: server/CMakeFiles/server_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/test/Documents/network_programming/src/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object server/CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.o"
	cd /Users/test/Documents/network_programming/src/app/build/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT server/CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.o -MF CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.o -c /Users/test/Documents/network_programming/src/app/build/server/server_library_autogen/mocs_compilation.cpp

server/CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.i"
	cd /Users/test/Documents/network_programming/src/app/build/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/test/Documents/network_programming/src/app/build/server/server_library_autogen/mocs_compilation.cpp > CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.i

server/CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.s"
	cd /Users/test/Documents/network_programming/src/app/build/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/test/Documents/network_programming/src/app/build/server/server_library_autogen/mocs_compilation.cpp -o CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.s

server/CMakeFiles/server_library.dir/server_main.cpp.o: server/CMakeFiles/server_library.dir/flags.make
server/CMakeFiles/server_library.dir/server_main.cpp.o: /Users/test/Documents/network_programming/src/server/server_main.cpp
server/CMakeFiles/server_library.dir/server_main.cpp.o: server/CMakeFiles/server_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/test/Documents/network_programming/src/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object server/CMakeFiles/server_library.dir/server_main.cpp.o"
	cd /Users/test/Documents/network_programming/src/app/build/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT server/CMakeFiles/server_library.dir/server_main.cpp.o -MF CMakeFiles/server_library.dir/server_main.cpp.o.d -o CMakeFiles/server_library.dir/server_main.cpp.o -c /Users/test/Documents/network_programming/src/server/server_main.cpp

server/CMakeFiles/server_library.dir/server_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server_library.dir/server_main.cpp.i"
	cd /Users/test/Documents/network_programming/src/app/build/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/test/Documents/network_programming/src/server/server_main.cpp > CMakeFiles/server_library.dir/server_main.cpp.i

server/CMakeFiles/server_library.dir/server_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server_library.dir/server_main.cpp.s"
	cd /Users/test/Documents/network_programming/src/app/build/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/test/Documents/network_programming/src/server/server_main.cpp -o CMakeFiles/server_library.dir/server_main.cpp.s

server/CMakeFiles/server_library.dir/server_main_window.cpp.o: server/CMakeFiles/server_library.dir/flags.make
server/CMakeFiles/server_library.dir/server_main_window.cpp.o: /Users/test/Documents/network_programming/src/server/server_main_window.cpp
server/CMakeFiles/server_library.dir/server_main_window.cpp.o: server/CMakeFiles/server_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/test/Documents/network_programming/src/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object server/CMakeFiles/server_library.dir/server_main_window.cpp.o"
	cd /Users/test/Documents/network_programming/src/app/build/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT server/CMakeFiles/server_library.dir/server_main_window.cpp.o -MF CMakeFiles/server_library.dir/server_main_window.cpp.o.d -o CMakeFiles/server_library.dir/server_main_window.cpp.o -c /Users/test/Documents/network_programming/src/server/server_main_window.cpp

server/CMakeFiles/server_library.dir/server_main_window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server_library.dir/server_main_window.cpp.i"
	cd /Users/test/Documents/network_programming/src/app/build/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/test/Documents/network_programming/src/server/server_main_window.cpp > CMakeFiles/server_library.dir/server_main_window.cpp.i

server/CMakeFiles/server_library.dir/server_main_window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server_library.dir/server_main_window.cpp.s"
	cd /Users/test/Documents/network_programming/src/app/build/server && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/test/Documents/network_programming/src/server/server_main_window.cpp -o CMakeFiles/server_library.dir/server_main_window.cpp.s

# Object files for target server_library
server_library_OBJECTS = \
"CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/server_library.dir/server_main.cpp.o" \
"CMakeFiles/server_library.dir/server_main_window.cpp.o"

# External object files for target server_library
server_library_EXTERNAL_OBJECTS =

server/libserver_library.a: server/CMakeFiles/server_library.dir/server_library_autogen/mocs_compilation.cpp.o
server/libserver_library.a: server/CMakeFiles/server_library.dir/server_main.cpp.o
server/libserver_library.a: server/CMakeFiles/server_library.dir/server_main_window.cpp.o
server/libserver_library.a: server/CMakeFiles/server_library.dir/build.make
server/libserver_library.a: server/CMakeFiles/server_library.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/test/Documents/network_programming/src/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libserver_library.a"
	cd /Users/test/Documents/network_programming/src/app/build/server && $(CMAKE_COMMAND) -P CMakeFiles/server_library.dir/cmake_clean_target.cmake
	cd /Users/test/Documents/network_programming/src/app/build/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server_library.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
server/CMakeFiles/server_library.dir/build: server/libserver_library.a
.PHONY : server/CMakeFiles/server_library.dir/build

server/CMakeFiles/server_library.dir/clean:
	cd /Users/test/Documents/network_programming/src/app/build/server && $(CMAKE_COMMAND) -P CMakeFiles/server_library.dir/cmake_clean.cmake
.PHONY : server/CMakeFiles/server_library.dir/clean

server/CMakeFiles/server_library.dir/depend:
	cd /Users/test/Documents/network_programming/src/app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/test/Documents/network_programming/src /Users/test/Documents/network_programming/src/server /Users/test/Documents/network_programming/src/app/build /Users/test/Documents/network_programming/src/app/build/server /Users/test/Documents/network_programming/src/app/build/server/CMakeFiles/server_library.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : server/CMakeFiles/server_library.dir/depend

