# Install script for directory: /home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-info" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-info")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-info"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/sndfile-info")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-info" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-info")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-info")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-play" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-play")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-play"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/sndfile-play")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-play" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-play")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-play")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-convert" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-convert")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-convert"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/sndfile-convert")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-convert" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-convert")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-convert")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-cmp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-cmp")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-cmp"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/sndfile-cmp")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-cmp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-cmp")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-cmp")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-metadata-set" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-metadata-set")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-metadata-set"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/sndfile-metadata-set")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-metadata-set" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-metadata-set")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-metadata-set")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-metadata-get" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-metadata-get")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-metadata-get"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/sndfile-metadata-get")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-metadata-get" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-metadata-get")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-metadata-get")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-interleave" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-interleave")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-interleave"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/sndfile-interleave")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-interleave" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-interleave")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-interleave")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-deinterleave" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-deinterleave")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-deinterleave"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/sndfile-deinterleave")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-deinterleave" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-deinterleave")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-deinterleave")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-concat" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-concat")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-concat"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/sndfile-concat")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-concat" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-concat")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-concat")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-salvage" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-salvage")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-salvage"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/sndfile-salvage")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-salvage" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-salvage")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/sndfile-salvage")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/libsndfile.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/include/sndfile.h"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/include/sndfile.hh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SndFile/SndFileTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SndFile/SndFileTargets.cmake"
         "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/CMakeFiles/Export/5c71f72976042dd672d3a20ad1898c82/SndFileTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SndFile/SndFileTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SndFile/SndFileTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SndFile" TYPE FILE FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/CMakeFiles/Export/5c71f72976042dd672d3a20ad1898c82/SndFileTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SndFile" TYPE FILE FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/CMakeFiles/Export/5c71f72976042dd672d3a20ad1898c82/SndFileTargets-relwithdebinfo.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SndFile" TYPE FILE RENAME "SndFileConfig.cmake" FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/SndFileConfig2.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SndFile" TYPE FILE FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/SndFileConfigVersion.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SndFile" TYPE FILE FILES
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/cmake/FindFLAC.cmake"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/cmake/FindOgg.cmake"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/cmake/FindOpus.cmake"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/cmake/FindVorbis.cmake"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/cmake/Findmpg123.cmake"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/cmake/Findmp3lame.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/man/sndfile-info.1"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/man/sndfile-play.1"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/man/sndfile-convert.1"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/man/sndfile-cmp.1"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/man/sndfile-metadata-get.1"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/man/sndfile-concat.1"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/man/sndfile-interleave.1"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/man/sndfile-salvage.1"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE RENAME "sndfile-metadata-set.1" FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/man/sndfile-metadata-get.1")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE RENAME "sndfile-deinterleave.1" FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/man/sndfile-interleave.1")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/libsndfile" TYPE FILE FILES
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/index.md"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/libsndfile.jpg"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/libsndfile.css"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/print.css"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/api.md"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/command.md"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/bugs.md"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/formats.md"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/sndfile_info.md"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/new_file_type_howto.md"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/win32.md"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/FAQ.md"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/lists.md"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/embedded_files.md"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/octave.md"
    "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/libsndfile/docs/tutorial.md"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ccn/projects/opengl_toolbox_organization/mwe_sound_world_with_character/build/libsndfile/sndfile.pc")
endif()

