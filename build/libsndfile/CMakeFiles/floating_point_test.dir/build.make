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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build

# Include any dependencies generated for this target.
include libsndfile/CMakeFiles/floating_point_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsndfile/CMakeFiles/floating_point_test.dir/compiler_depend.make

# Include the progress variables for this target.
include libsndfile/CMakeFiles/floating_point_test.dir/progress.make

# Include the compile flags for this target's objects.
include libsndfile/CMakeFiles/floating_point_test.dir/flags.make

libsndfile/tests/floating_point_test.c: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/floating_point_test.def
libsndfile/tests/floating_point_test.c: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/cmake/CMakeAutoGenScript.cmake
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "CMakeAutoGen: generating floating_point_test.c"
	/usr/bin/cmake -DDEFINITION=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/floating_point_test.def -DOUTPUTDIR=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/tests -P /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/cmake/CMakeAutoGenScript.cmake

libsndfile/CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.o: libsndfile/CMakeFiles/floating_point_test.dir/flags.make
libsndfile/CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.o: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/dft_cmp.c
libsndfile/CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.o: libsndfile/CMakeFiles/floating_point_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsndfile/CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsndfile/CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.o -MF CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.o.d -o CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/dft_cmp.c

libsndfile/CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/dft_cmp.c > CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.i

libsndfile/CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/dft_cmp.c -o CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.s

libsndfile/CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.o: libsndfile/CMakeFiles/floating_point_test.dir/flags.make
libsndfile/CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.o: libsndfile/tests/floating_point_test.c
libsndfile/CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.o: libsndfile/CMakeFiles/floating_point_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsndfile/CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsndfile/CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.o -MF CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.o.d -o CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/tests/floating_point_test.c

libsndfile/CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/tests/floating_point_test.c > CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.i

libsndfile/CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/tests/floating_point_test.c -o CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.s

# Object files for target floating_point_test
floating_point_test_OBJECTS = \
"CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.o" \
"CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.o"

# External object files for target floating_point_test
floating_point_test_EXTERNAL_OBJECTS =

libsndfile/floating_point_test: libsndfile/CMakeFiles/floating_point_test.dir/tests/dft_cmp.c.o
libsndfile/floating_point_test: libsndfile/CMakeFiles/floating_point_test.dir/tests/floating_point_test.c.o
libsndfile/floating_point_test: libsndfile/CMakeFiles/floating_point_test.dir/build.make
libsndfile/floating_point_test: libsndfile/libsndfile.a
libsndfile/floating_point_test: libsndfile/libtest_utils.a
libsndfile/floating_point_test: libsndfile/libsndfile.a
libsndfile/floating_point_test: /usr/lib/libvorbisenc.so
libsndfile/floating_point_test: /usr/lib/libvorbis.so
libsndfile/floating_point_test: /usr/lib/libFLAC.so
libsndfile/floating_point_test: /usr/lib/libogg.so
libsndfile/floating_point_test: /usr/lib/libopus.so
libsndfile/floating_point_test: /usr/lib/libmpg123.so
libsndfile/floating_point_test: /usr/lib/libmp3lame.so
libsndfile/floating_point_test: libsndfile/CMakeFiles/floating_point_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable floating_point_test"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/floating_point_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsndfile/CMakeFiles/floating_point_test.dir/build: libsndfile/floating_point_test
.PHONY : libsndfile/CMakeFiles/floating_point_test.dir/build

libsndfile/CMakeFiles/floating_point_test.dir/clean:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && $(CMAKE_COMMAND) -P CMakeFiles/floating_point_test.dir/cmake_clean.cmake
.PHONY : libsndfile/CMakeFiles/floating_point_test.dir/clean

libsndfile/CMakeFiles/floating_point_test.dir/depend: libsndfile/tests/floating_point_test.c
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/CMakeFiles/floating_point_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : libsndfile/CMakeFiles/floating_point_test.dir/depend
