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
include libsndfile/CMakeFiles/sndfile-convert.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsndfile/CMakeFiles/sndfile-convert.dir/compiler_depend.make

# Include the progress variables for this target.
include libsndfile/CMakeFiles/sndfile-convert.dir/progress.make

# Include the compile flags for this target's objects.
include libsndfile/CMakeFiles/sndfile-convert.dir/flags.make

libsndfile/CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.o: libsndfile/CMakeFiles/sndfile-convert.dir/flags.make
libsndfile/CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.o: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/sndfile-convert.c
libsndfile/CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.o: libsndfile/CMakeFiles/sndfile-convert.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsndfile/CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsndfile/CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.o -MF CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.o.d -o CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/sndfile-convert.c

libsndfile/CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/sndfile-convert.c > CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.i

libsndfile/CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/sndfile-convert.c -o CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.s

libsndfile/CMakeFiles/sndfile-convert.dir/programs/common.c.o: libsndfile/CMakeFiles/sndfile-convert.dir/flags.make
libsndfile/CMakeFiles/sndfile-convert.dir/programs/common.c.o: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/common.c
libsndfile/CMakeFiles/sndfile-convert.dir/programs/common.c.o: libsndfile/CMakeFiles/sndfile-convert.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsndfile/CMakeFiles/sndfile-convert.dir/programs/common.c.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsndfile/CMakeFiles/sndfile-convert.dir/programs/common.c.o -MF CMakeFiles/sndfile-convert.dir/programs/common.c.o.d -o CMakeFiles/sndfile-convert.dir/programs/common.c.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/common.c

libsndfile/CMakeFiles/sndfile-convert.dir/programs/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/sndfile-convert.dir/programs/common.c.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/common.c > CMakeFiles/sndfile-convert.dir/programs/common.c.i

libsndfile/CMakeFiles/sndfile-convert.dir/programs/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/sndfile-convert.dir/programs/common.c.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/common.c -o CMakeFiles/sndfile-convert.dir/programs/common.c.s

# Object files for target sndfile-convert
sndfile__convert_OBJECTS = \
"CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.o" \
"CMakeFiles/sndfile-convert.dir/programs/common.c.o"

# External object files for target sndfile-convert
sndfile__convert_EXTERNAL_OBJECTS =

libsndfile/sndfile-convert: libsndfile/CMakeFiles/sndfile-convert.dir/programs/sndfile-convert.c.o
libsndfile/sndfile-convert: libsndfile/CMakeFiles/sndfile-convert.dir/programs/common.c.o
libsndfile/sndfile-convert: libsndfile/CMakeFiles/sndfile-convert.dir/build.make
libsndfile/sndfile-convert: libsndfile/libsndfile.a
libsndfile/sndfile-convert: /usr/lib/libvorbisenc.so
libsndfile/sndfile-convert: /usr/lib/libvorbis.so
libsndfile/sndfile-convert: /usr/lib/libFLAC.so
libsndfile/sndfile-convert: /usr/lib/libogg.so
libsndfile/sndfile-convert: /usr/lib/libopus.so
libsndfile/sndfile-convert: /usr/lib/libmpg123.so
libsndfile/sndfile-convert: /usr/lib/libmp3lame.so
libsndfile/sndfile-convert: libsndfile/CMakeFiles/sndfile-convert.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable sndfile-convert"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sndfile-convert.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsndfile/CMakeFiles/sndfile-convert.dir/build: libsndfile/sndfile-convert
.PHONY : libsndfile/CMakeFiles/sndfile-convert.dir/build

libsndfile/CMakeFiles/sndfile-convert.dir/clean:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && $(CMAKE_COMMAND) -P CMakeFiles/sndfile-convert.dir/cmake_clean.cmake
.PHONY : libsndfile/CMakeFiles/sndfile-convert.dir/clean

libsndfile/CMakeFiles/sndfile-convert.dir/depend:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/CMakeFiles/sndfile-convert.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : libsndfile/CMakeFiles/sndfile-convert.dir/depend
