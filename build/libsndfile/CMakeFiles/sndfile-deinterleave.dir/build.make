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
include libsndfile/CMakeFiles/sndfile-deinterleave.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsndfile/CMakeFiles/sndfile-deinterleave.dir/compiler_depend.make

# Include the progress variables for this target.
include libsndfile/CMakeFiles/sndfile-deinterleave.dir/progress.make

# Include the compile flags for this target's objects.
include libsndfile/CMakeFiles/sndfile-deinterleave.dir/flags.make

libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.o: libsndfile/CMakeFiles/sndfile-deinterleave.dir/flags.make
libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.o: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/sndfile-deinterleave.c
libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.o: libsndfile/CMakeFiles/sndfile-deinterleave.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.o -MF CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.o.d -o CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/sndfile-deinterleave.c

libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/sndfile-deinterleave.c > CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.i

libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/sndfile-deinterleave.c -o CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.s

libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/common.c.o: libsndfile/CMakeFiles/sndfile-deinterleave.dir/flags.make
libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/common.c.o: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/common.c
libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/common.c.o: libsndfile/CMakeFiles/sndfile-deinterleave.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/common.c.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/common.c.o -MF CMakeFiles/sndfile-deinterleave.dir/programs/common.c.o.d -o CMakeFiles/sndfile-deinterleave.dir/programs/common.c.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/common.c

libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/sndfile-deinterleave.dir/programs/common.c.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/common.c > CMakeFiles/sndfile-deinterleave.dir/programs/common.c.i

libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/sndfile-deinterleave.dir/programs/common.c.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/programs/common.c -o CMakeFiles/sndfile-deinterleave.dir/programs/common.c.s

# Object files for target sndfile-deinterleave
sndfile__deinterleave_OBJECTS = \
"CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.o" \
"CMakeFiles/sndfile-deinterleave.dir/programs/common.c.o"

# External object files for target sndfile-deinterleave
sndfile__deinterleave_EXTERNAL_OBJECTS =

libsndfile/sndfile-deinterleave: libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/sndfile-deinterleave.c.o
libsndfile/sndfile-deinterleave: libsndfile/CMakeFiles/sndfile-deinterleave.dir/programs/common.c.o
libsndfile/sndfile-deinterleave: libsndfile/CMakeFiles/sndfile-deinterleave.dir/build.make
libsndfile/sndfile-deinterleave: libsndfile/libsndfile.a
libsndfile/sndfile-deinterleave: /usr/lib/libvorbisenc.so
libsndfile/sndfile-deinterleave: /usr/lib/libvorbis.so
libsndfile/sndfile-deinterleave: /usr/lib/libFLAC.so
libsndfile/sndfile-deinterleave: /usr/lib/libogg.so
libsndfile/sndfile-deinterleave: /usr/lib/libopus.so
libsndfile/sndfile-deinterleave: /usr/lib/libmpg123.so
libsndfile/sndfile-deinterleave: /usr/lib/libmp3lame.so
libsndfile/sndfile-deinterleave: libsndfile/CMakeFiles/sndfile-deinterleave.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable sndfile-deinterleave"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sndfile-deinterleave.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsndfile/CMakeFiles/sndfile-deinterleave.dir/build: libsndfile/sndfile-deinterleave
.PHONY : libsndfile/CMakeFiles/sndfile-deinterleave.dir/build

libsndfile/CMakeFiles/sndfile-deinterleave.dir/clean:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && $(CMAKE_COMMAND) -P CMakeFiles/sndfile-deinterleave.dir/cmake_clean.cmake
.PHONY : libsndfile/CMakeFiles/sndfile-deinterleave.dir/clean

libsndfile/CMakeFiles/sndfile-deinterleave.dir/depend:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/CMakeFiles/sndfile-deinterleave.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : libsndfile/CMakeFiles/sndfile-deinterleave.dir/depend
