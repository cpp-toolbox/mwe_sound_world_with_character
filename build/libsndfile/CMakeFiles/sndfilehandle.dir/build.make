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
include libsndfile/CMakeFiles/sndfilehandle.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include libsndfile/CMakeFiles/sndfilehandle.dir/compiler_depend.make

# Include the progress variables for this target.
include libsndfile/CMakeFiles/sndfilehandle.dir/progress.make

# Include the compile flags for this target's objects.
include libsndfile/CMakeFiles/sndfilehandle.dir/flags.make

libsndfile/CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.o: libsndfile/CMakeFiles/sndfilehandle.dir/flags.make
libsndfile/CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.o: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/examples/sndfilehandle.cc
libsndfile/CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.o: libsndfile/CMakeFiles/sndfilehandle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libsndfile/CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.o"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT libsndfile/CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.o -MF CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.o.d -o CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.o -c /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/examples/sndfilehandle.cc

libsndfile/CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.i"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/examples/sndfilehandle.cc > CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.i

libsndfile/CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.s"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/examples/sndfilehandle.cc -o CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.s

# Object files for target sndfilehandle
sndfilehandle_OBJECTS = \
"CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.o"

# External object files for target sndfilehandle
sndfilehandle_EXTERNAL_OBJECTS =

libsndfile/sndfilehandle: libsndfile/CMakeFiles/sndfilehandle.dir/examples/sndfilehandle.cc.o
libsndfile/sndfilehandle: libsndfile/CMakeFiles/sndfilehandle.dir/build.make
libsndfile/sndfilehandle: libsndfile/libsndfile.a
libsndfile/sndfilehandle: /usr/lib/libvorbisenc.so
libsndfile/sndfilehandle: /usr/lib/libvorbis.so
libsndfile/sndfilehandle: /usr/lib/libFLAC.so
libsndfile/sndfilehandle: /usr/lib/libogg.so
libsndfile/sndfilehandle: /usr/lib/libopus.so
libsndfile/sndfilehandle: /usr/lib/libmpg123.so
libsndfile/sndfilehandle: /usr/lib/libmp3lame.so
libsndfile/sndfilehandle: libsndfile/CMakeFiles/sndfilehandle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sndfilehandle"
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sndfilehandle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libsndfile/CMakeFiles/sndfilehandle.dir/build: libsndfile/sndfilehandle
.PHONY : libsndfile/CMakeFiles/sndfilehandle.dir/build

libsndfile/CMakeFiles/sndfilehandle.dir/clean:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile && $(CMAKE_COMMAND) -P CMakeFiles/sndfilehandle.dir/cmake_clean.cmake
.PHONY : libsndfile/CMakeFiles/sndfilehandle.dir/clean

libsndfile/CMakeFiles/sndfilehandle.dir/depend:
	cd /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/CMakeFiles/sndfilehandle.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : libsndfile/CMakeFiles/sndfilehandle.dir/depend
