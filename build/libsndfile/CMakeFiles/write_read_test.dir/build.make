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
include libsndfile/CMakeFiles/write_read_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsndfile/CMakeFiles/write_read_test.dir/compiler_depend.make

# Include the progress variables for this target.
include libsndfile/CMakeFiles/write_read_test.dir/progress.make

# Include the compile flags for this target's objects.
include libsndfile/CMakeFiles/write_read_test.dir/flags.make

libsndfile/tests/write_read_test.c: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/write_read_test.def
libsndfile/tests/write_read_test.c: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/cmake/CMakeAutoGenScript.cmake
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "CMakeAutoGen: generating write_read_test.c"
	/usr/bin/cmake -DDEFINITION=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/write_read_test.def -DOUTPUTDIR=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/tests -P /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/cmake/CMakeAutoGenScript.cmake

libsndfile/CMakeFiles/write_read_test.dir/tests/generate.c.o: libsndfile/CMakeFiles/write_read_test.dir/flags.make
libsndfile/CMakeFiles/write_read_test.dir/tests/generate.c.o: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/generate.c
libsndfile/CMakeFiles/write_read_test.dir/tests/generate.c.o: libsndfile/CMakeFiles/write_read_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsndfile/CMakeFiles/write_read_test.dir/tests/generate.c.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsndfile/CMakeFiles/write_read_test.dir/tests/generate.c.o -MF CMakeFiles/write_read_test.dir/tests/generate.c.o.d -o CMakeFiles/write_read_test.dir/tests/generate.c.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/generate.c

libsndfile/CMakeFiles/write_read_test.dir/tests/generate.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/write_read_test.dir/tests/generate.c.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/generate.c > CMakeFiles/write_read_test.dir/tests/generate.c.i

libsndfile/CMakeFiles/write_read_test.dir/tests/generate.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/write_read_test.dir/tests/generate.c.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/generate.c -o CMakeFiles/write_read_test.dir/tests/generate.c.s

libsndfile/CMakeFiles/write_read_test.dir/tests/write_read_test.c.o: libsndfile/CMakeFiles/write_read_test.dir/flags.make
libsndfile/CMakeFiles/write_read_test.dir/tests/write_read_test.c.o: libsndfile/tests/write_read_test.c
libsndfile/CMakeFiles/write_read_test.dir/tests/write_read_test.c.o: libsndfile/CMakeFiles/write_read_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object libsndfile/CMakeFiles/write_read_test.dir/tests/write_read_test.c.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsndfile/CMakeFiles/write_read_test.dir/tests/write_read_test.c.o -MF CMakeFiles/write_read_test.dir/tests/write_read_test.c.o.d -o CMakeFiles/write_read_test.dir/tests/write_read_test.c.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/tests/write_read_test.c

libsndfile/CMakeFiles/write_read_test.dir/tests/write_read_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/write_read_test.dir/tests/write_read_test.c.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/tests/write_read_test.c > CMakeFiles/write_read_test.dir/tests/write_read_test.c.i

libsndfile/CMakeFiles/write_read_test.dir/tests/write_read_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/write_read_test.dir/tests/write_read_test.c.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/tests/write_read_test.c -o CMakeFiles/write_read_test.dir/tests/write_read_test.c.s

# Object files for target write_read_test
write_read_test_OBJECTS = \
"CMakeFiles/write_read_test.dir/tests/generate.c.o" \
"CMakeFiles/write_read_test.dir/tests/write_read_test.c.o"

# External object files for target write_read_test
write_read_test_EXTERNAL_OBJECTS =

libsndfile/write_read_test: libsndfile/CMakeFiles/write_read_test.dir/tests/generate.c.o
libsndfile/write_read_test: libsndfile/CMakeFiles/write_read_test.dir/tests/write_read_test.c.o
libsndfile/write_read_test: libsndfile/CMakeFiles/write_read_test.dir/build.make
libsndfile/write_read_test: libsndfile/libsndfile.a
libsndfile/write_read_test: libsndfile/libtest_utils.a
libsndfile/write_read_test: libsndfile/libsndfile.a
libsndfile/write_read_test: /usr/lib/libvorbisenc.so
libsndfile/write_read_test: /usr/lib/libvorbis.so
libsndfile/write_read_test: /usr/lib/libFLAC.so
libsndfile/write_read_test: /usr/lib/libogg.so
libsndfile/write_read_test: /usr/lib/libopus.so
libsndfile/write_read_test: /usr/lib/libmpg123.so
libsndfile/write_read_test: /usr/lib/libmp3lame.so
libsndfile/write_read_test: libsndfile/CMakeFiles/write_read_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable write_read_test"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/write_read_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsndfile/CMakeFiles/write_read_test.dir/build: libsndfile/write_read_test
.PHONY : libsndfile/CMakeFiles/write_read_test.dir/build

libsndfile/CMakeFiles/write_read_test.dir/clean:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && $(CMAKE_COMMAND) -P CMakeFiles/write_read_test.dir/cmake_clean.cmake
.PHONY : libsndfile/CMakeFiles/write_read_test.dir/clean

libsndfile/CMakeFiles/write_read_test.dir/depend: libsndfile/tests/write_read_test.c
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/CMakeFiles/write_read_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : libsndfile/CMakeFiles/write_read_test.dir/depend
