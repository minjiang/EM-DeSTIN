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
include EMdestin_test/CMakeFiles/test2.dir/depend.make

# Include the progress variables for this target.
include EMdestin_test/CMakeFiles/test2.dir/progress.make

# Include the compile flags for this target's objects.
include EMdestin_test/CMakeFiles/test2.dir/flags.make

EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.o: EMdestin_test/CMakeFiles/test2.dir/flags.make
EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.o: EMdestin_test/src/test2.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zhangzinan/destin_ted_temp/Destin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.o"
	cd /home/zhangzinan/destin_ted_temp/Destin/EMdestin_test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test2.dir/src/test2.cpp.o -c /home/zhangzinan/destin_ted_temp/Destin/EMdestin_test/src/test2.cpp

EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test2.dir/src/test2.cpp.i"
	cd /home/zhangzinan/destin_ted_temp/Destin/EMdestin_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/zhangzinan/destin_ted_temp/Destin/EMdestin_test/src/test2.cpp > CMakeFiles/test2.dir/src/test2.cpp.i

EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test2.dir/src/test2.cpp.s"
	cd /home/zhangzinan/destin_ted_temp/Destin/EMdestin_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/zhangzinan/destin_ted_temp/Destin/EMdestin_test/src/test2.cpp -o CMakeFiles/test2.dir/src/test2.cpp.s

EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.o.requires:
.PHONY : EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.o.requires

EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.o.provides: EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.o.requires
	$(MAKE) -f EMdestin_test/CMakeFiles/test2.dir/build.make EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.o.provides.build
.PHONY : EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.o.provides

EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.o.provides.build: EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.o

# Object files for target test2
test2_OBJECTS = \
"CMakeFiles/test2.dir/src/test2.cpp.o"

# External object files for target test2
test2_EXTERNAL_OBJECTS =

EMdestin_test/test2: EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.o
EMdestin_test/test2: Common/libcommon.so
EMdestin_test/test2: EMDestin/libdestinalt.so
EMdestin_test/test2: EMdestin_test/libstereovision.so
EMdestin_test/test2: SOM/libsom.so
EMdestin_test/test2: /usr/local/lib/libopencv_calib3d.so
EMdestin_test/test2: /usr/local/lib/libopencv_contrib.so
EMdestin_test/test2: /usr/local/lib/libopencv_core.so
EMdestin_test/test2: /usr/local/lib/libopencv_features2d.so
EMdestin_test/test2: /usr/local/lib/libopencv_flann.so
EMdestin_test/test2: /usr/local/lib/libopencv_gpu.so
EMdestin_test/test2: /usr/local/lib/libopencv_highgui.so
EMdestin_test/test2: /usr/local/lib/libopencv_imgproc.so
EMdestin_test/test2: /usr/local/lib/libopencv_legacy.so
EMdestin_test/test2: /usr/local/lib/libopencv_ml.so
EMdestin_test/test2: /usr/local/lib/libopencv_nonfree.so
EMdestin_test/test2: /usr/local/lib/libopencv_objdetect.so
EMdestin_test/test2: /usr/local/lib/libopencv_photo.so
EMdestin_test/test2: /usr/local/lib/libopencv_stitching.so
EMdestin_test/test2: /usr/local/lib/libopencv_superres.so
EMdestin_test/test2: /usr/local/lib/libopencv_ts.so
EMdestin_test/test2: /usr/local/lib/libopencv_video.so
EMdestin_test/test2: /usr/local/lib/libopencv_videostab.so
EMdestin_test/test2: EMdestin_test/CMakeFiles/test2.dir/build.make
EMdestin_test/test2: EMdestin_test/CMakeFiles/test2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test2"
	cd /home/zhangzinan/destin_ted_temp/Destin/EMdestin_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
EMdestin_test/CMakeFiles/test2.dir/build: EMdestin_test/test2
.PHONY : EMdestin_test/CMakeFiles/test2.dir/build

EMdestin_test/CMakeFiles/test2.dir/requires: EMdestin_test/CMakeFiles/test2.dir/src/test2.cpp.o.requires
.PHONY : EMdestin_test/CMakeFiles/test2.dir/requires

EMdestin_test/CMakeFiles/test2.dir/clean:
	cd /home/zhangzinan/destin_ted_temp/Destin/EMdestin_test && $(CMAKE_COMMAND) -P CMakeFiles/test2.dir/cmake_clean.cmake
.PHONY : EMdestin_test/CMakeFiles/test2.dir/clean

EMdestin_test/CMakeFiles/test2.dir/depend:
	cd /home/zhangzinan/destin_ted_temp/Destin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhangzinan/destin_ted_temp/Destin /home/zhangzinan/destin_ted_temp/Destin/EMdestin_test /home/zhangzinan/destin_ted_temp/Destin /home/zhangzinan/destin_ted_temp/Destin/EMdestin_test /home/zhangzinan/destin_ted_temp/Destin/EMdestin_test/CMakeFiles/test2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : EMdestin_test/CMakeFiles/test2.dir/depend

