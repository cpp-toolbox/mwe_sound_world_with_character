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
include libsndfile/CMakeFiles/string_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsndfile/CMakeFiles/string_test.dir/compiler_depend.make

# Include the progress variables for this target.
include libsndfile/CMakeFiles/string_test.dir/progress.make

# Include the compile flags for this target's objects.
include libsndfile/CMakeFiles/string_test.dir/flags.make

libsndfile/CMakeFiles/string_test.dir/tests/string_test.c.o: libsndfile/CMakeFiles/string_test.dir/flags.make
libsndfile/CMakeFiles/string_test.dir/tests/string_test.c.o: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/string_test.c
libsndfile/CMakeFiles/string_test.dir/tests/string_test.c.o: libsndfile/CMakeFiles/string_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsndfile/CMakeFiles/string_test.dir/tests/string_test.c.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsndfile/CMakeFiles/string_test.dir/tests/string_test.c.o -MF CMakeFiles/string_test.dir/tests/string_test.c.o.d -o CMakeFiles/string_test.dir/tests/string_test.c.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/string_test.c

libsndfile/CMakeFiles/string_test.dir/tests/string_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/string_test.dir/tests/string_test.c.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/string_test.c > CMakeFiles/string_test.dir/tests/string_test.c.i

libsndfile/CMakeFiles/string_test.dir/tests/string_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/string_test.dir/tests/string_test.c.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/tests/string_test.c -o CMakeFiles/string_test.dir/tests/string_test.c.s

# Object files for target string_test
string_test_OBJECTS = \
"CMakeFiles/string_test.dir/tests/string_test.c.o"

# External object files for target string_test
string_test_EXTERNAL_OBJECTS =

libsndfile/string_test: libsndfile/CMakeFiles/string_test.dir/tests/string_test.c.o
libsndfile/string_test: libsndfile/CMakeFiles/string_test.dir/build.make
libsndfile/string_test: libsndfile/libsndfile.a
libsndfile/string_test: libsndfile/libtest_utils.a
libsndfile/string_test: libsndfile/libsndfile.a
libsndfile/string_test: /usr/lib/libvorbisenc.so
libsndfile/string_test: /usr/lib/libvorbis.so
libsndfile/string_test: /usr/lib/libFLAC.so
libsndfile/string_test: /usr/lib/libogg.so
libsndfile/string_test: /usr/lib/libopus.so
libsndfile/string_test: /usr/lib/libmpg123.so
libsndfile/string_test: /usr/lib/libmp3lame.so
libsndfile/string_test: libsndfile/CMakeFiles/string_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable string_test"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/string_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsndfile/CMakeFiles/string_test.dir/build: libsndfile/string_test
.PHONY : libsndfile/CMakeFiles/string_test.dir/build

libsndfile/CMakeFiles/string_test.dir/clean:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && $(CMAKE_COMMAND) -P CMakeFiles/string_test.dir/cmake_clean.cmake
.PHONY : libsndfile/CMakeFiles/string_test.dir/clean

libsndfile/CMakeFiles/string_test.dir/depend:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/CMakeFiles/string_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : libsndfile/CMakeFiles/string_test.dir/depend
