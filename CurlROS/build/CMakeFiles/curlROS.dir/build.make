# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/kanishka/Desktop/ROS/CurlROS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kanishka/Desktop/ROS/CurlROS/build

# Include any dependencies generated for this target.
include CMakeFiles/curlROS.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/curlROS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/curlROS.dir/flags.make

CMakeFiles/curlROS.dir/curlROS.cpp.o: CMakeFiles/curlROS.dir/flags.make
CMakeFiles/curlROS.dir/curlROS.cpp.o: ../curlROS.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/kanishka/Desktop/ROS/CurlROS/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/curlROS.dir/curlROS.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/curlROS.dir/curlROS.cpp.o -c /home/kanishka/Desktop/ROS/CurlROS/curlROS.cpp

CMakeFiles/curlROS.dir/curlROS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/curlROS.dir/curlROS.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/kanishka/Desktop/ROS/CurlROS/curlROS.cpp > CMakeFiles/curlROS.dir/curlROS.cpp.i

CMakeFiles/curlROS.dir/curlROS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/curlROS.dir/curlROS.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/kanishka/Desktop/ROS/CurlROS/curlROS.cpp -o CMakeFiles/curlROS.dir/curlROS.cpp.s

CMakeFiles/curlROS.dir/curlROS.cpp.o.requires:
.PHONY : CMakeFiles/curlROS.dir/curlROS.cpp.o.requires

CMakeFiles/curlROS.dir/curlROS.cpp.o.provides: CMakeFiles/curlROS.dir/curlROS.cpp.o.requires
	$(MAKE) -f CMakeFiles/curlROS.dir/build.make CMakeFiles/curlROS.dir/curlROS.cpp.o.provides.build
.PHONY : CMakeFiles/curlROS.dir/curlROS.cpp.o.provides

CMakeFiles/curlROS.dir/curlROS.cpp.o.provides.build: CMakeFiles/curlROS.dir/curlROS.cpp.o

# Object files for target curlROS
curlROS_OBJECTS = \
"CMakeFiles/curlROS.dir/curlROS.cpp.o"

# External object files for target curlROS
curlROS_EXTERNAL_OBJECTS =

devel/lib/curlros/curlROS: CMakeFiles/curlROS.dir/curlROS.cpp.o
devel/lib/curlros/curlROS: CMakeFiles/curlROS.dir/build.make
devel/lib/curlros/curlROS: /usr/lib/i386-linux-gnu/libcurl.so
devel/lib/curlros/curlROS: /opt/ros/indigo/lib/libroscpp.so
devel/lib/curlros/curlROS: /usr/lib/i386-linux-gnu/libboost_signals.so
devel/lib/curlros/curlROS: /usr/lib/i386-linux-gnu/libboost_filesystem.so
devel/lib/curlros/curlROS: /opt/ros/indigo/lib/librosconsole.so
devel/lib/curlros/curlROS: /opt/ros/indigo/lib/librosconsole_log4cxx.so
devel/lib/curlros/curlROS: /opt/ros/indigo/lib/librosconsole_backend_interface.so
devel/lib/curlros/curlROS: /usr/lib/liblog4cxx.so
devel/lib/curlros/curlROS: /usr/lib/i386-linux-gnu/libboost_regex.so
devel/lib/curlros/curlROS: /opt/ros/indigo/lib/libroscpp_serialization.so
devel/lib/curlros/curlROS: /opt/ros/indigo/lib/librostime.so
devel/lib/curlros/curlROS: /usr/lib/i386-linux-gnu/libboost_date_time.so
devel/lib/curlros/curlROS: /opt/ros/indigo/lib/libxmlrpcpp.so
devel/lib/curlros/curlROS: /opt/ros/indigo/lib/libcpp_common.so
devel/lib/curlros/curlROS: /usr/lib/i386-linux-gnu/libboost_system.so
devel/lib/curlros/curlROS: /usr/lib/i386-linux-gnu/libboost_thread.so
devel/lib/curlros/curlROS: /usr/lib/i386-linux-gnu/libpthread.so
devel/lib/curlros/curlROS: /usr/lib/i386-linux-gnu/libconsole_bridge.so
devel/lib/curlros/curlROS: CMakeFiles/curlROS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable devel/lib/curlros/curlROS"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/curlROS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/curlROS.dir/build: devel/lib/curlros/curlROS
.PHONY : CMakeFiles/curlROS.dir/build

CMakeFiles/curlROS.dir/requires: CMakeFiles/curlROS.dir/curlROS.cpp.o.requires
.PHONY : CMakeFiles/curlROS.dir/requires

CMakeFiles/curlROS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/curlROS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/curlROS.dir/clean

CMakeFiles/curlROS.dir/depend:
	cd /home/kanishka/Desktop/ROS/CurlROS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kanishka/Desktop/ROS/CurlROS /home/kanishka/Desktop/ROS/CurlROS /home/kanishka/Desktop/ROS/CurlROS/build /home/kanishka/Desktop/ROS/CurlROS/build /home/kanishka/Desktop/ROS/CurlROS/build/CMakeFiles/curlROS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/curlROS.dir/depend

