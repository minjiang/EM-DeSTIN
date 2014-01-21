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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zhangzinan/destin_ted_temp/Destin

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhangzinan/destin_ted_temp/Destin

# Include any dependencies generated for this target.
include SOM/CMakeFiles/som.dir/depend.make

# Include the progress variables for this target.
include SOM/CMakeFiles/som.dir/progress.make

# Include the compile flags for this target's objects.
include SOM/CMakeFiles/som.dir/flags.make

SOM/CMakeFiles/som.dir/cluster/src/cluster.c.o: SOM/CMakeFiles/som.dir/flags.make
SOM/CMakeFiles/som.dir/cluster/src/cluster.c.o: SOM/cluster/src/cluster.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zhangzinan/destin_ted_temp/Destin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object SOM/CMakeFiles/som.dir/cluster/src/cluster.c.o"
	cd /home/zhangzinan/destin_ted_temp/Destin/SOM && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/som.dir/cluster/src/cluster.c.o   -c /home/zhangzinan/destin_ted_temp/Destin/SOM/cluster/src/cluster.c

SOM/CMakeFiles/som.dir/cluster/src/cluster.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/som.dir/cluster/src/cluster.c.i"
	cd /home/zhangzinan/destin_ted_temp/Destin/SOM && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/zhangzinan/destin_ted_temp/Destin/SOM/cluster/src/cluster.c > CMakeFiles/som.dir/cluster/src/cluster.c.i

SOM/CMakeFiles/som.dir/cluster/src/cluster.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/som.dir/cluster/src/cluster.c.s"
	cd /home/zhangzinan/destin_ted_temp/Destin/SOM && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/zhangzinan/destin_ted_temp/Destin/SOM/cluster/src/cluster.c -o CMakeFiles/som.dir/cluster/src/cluster.c.s

SOM/CMakeFiles/som.dir/cluster/src/cluster.c.o.requires:
.PHONY : SOM/CMakeFiles/som.dir/cluster/src/cluster.c.o.requires

SOM/CMakeFiles/som.dir/cluster/src/cluster.c.o.provides: SOM/CMakeFiles/som.dir/cluster/src/cluster.c.o.requires
	$(MAKE) -f SOM/CMakeFiles/som.dir/build.make SOM/CMakeFiles/som.dir/cluster/src/cluster.c.o.provides.build
.PHONY : SOM/CMakeFiles/som.dir/cluster/src/cluster.c.o.provides

SOM/CMakeFiles/som.dir/cluster/src/cluster.c.o.provides.build: SOM/CMakeFiles/som.dir/cluster/src/cluster.c.o

# Object files for target som
som_OBJECTS = \
"CMakeFiles/som.dir/cluster/src/cluster.c.o"

# External object files for target som
som_EXTERNAL_OBJECTS =

SOM/libsom.so: SOM/CMakeFiles/som.dir/cluster/src/cluster.c.o
SOM/libsom.so: /usr/local/lib/libopencv_calib3d.so
SOM/libsom.so: /usr/local/lib/libopencv_contrib.so
SOM/libsom.so: /usr/local/lib/libopencv_core.so
SOM/libsom.so: /usr/local/lib/libopencv_features2d.so
SOM/libsom.so: /usr/local/lib/libopencv_flann.so
SOM/libsom.so: /usr/local/lib/libopencv_gpu.so
SOM/libsom.so: /usr/local/lib/libopencv_highgui.so
SOM/libsom.so: /usr/local/lib/libopencv_imgproc.so
SOM/libsom.so: /usr/local/lib/libopencv_legacy.so
SOM/libsom.so: /usr/local/lib/libopencv_ml.so
SOM/libsom.so: /usr/local/lib/libopencv_nonfree.so
SOM/libsom.so: /usr/local/lib/libopencv_objdetect.so
SOM/libsom.so: /usr/local/lib/libopencv_photo.so
SOM/libsom.so: /usr/local/lib/libopencv_stitching.so
SOM/libsom.so: /usr/local/lib/libopencv_superres.so
SOM/libsom.so: /usr/local/lib/libopencv_ts.so
SOM/libsom.so: /usr/local/lib/libopencv_video.so
SOM/libsom.so: /usr/local/lib/libopencv_videostab.so
SOM/libsom.so: SOM/CMakeFiles/som.dir/build.make
SOM/libsom.so: SOM/CMakeFiles/som.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libsom.so"
	cd /home/zhangzinan/destin_ted_temp/Destin/SOM && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/som.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
SOM/CMakeFiles/som.dir/build: SOM/libsom.so
.PHONY : SOM/CMakeFiles/som.dir/build

SOM/CMakeFiles/som.dir/requires: SOM/CMakeFiles/som.dir/cluster/src/cluster.c.o.requires
.PHONY : SOM/CMakeFiles/som.dir/requires

SOM/CMakeFiles/som.dir/clean:
	cd /home/zhangzinan/destin_ted_temp/Destin/SOM && $(CMAKE_COMMAND) -P CMakeFiles/som.dir/cmake_clean.cmake
.PHONY : SOM/CMakeFiles/som.dir/clean

SOM/CMakeFiles/som.dir/depend:
	cd /home/zhangzinan/destin_ted_temp/Destin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangzinan/destin_ted_temp/Destin /home/zhangzinan/destin_ted_temp/Destin/SOM /home/zhangzinan/destin_ted_temp/Destin /home/zhangzinan/destin_ted_temp/Destin/SOM /home/zhangzinan/destin_ted_temp/Destin/SOM/CMakeFiles/som.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : SOM/CMakeFiles/som.dir/depend

