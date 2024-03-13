cmake_minimum_required(VERSION 3.10)

project(openal_mwe)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(openal_mwe main.cpp
        sound/load_sound_file.cpp)

set(LIBTYPE STATIC)

add_subdirectory(external_libraries/openal-soft)
include_directories(external_libraries/openal-soft/include)

set(ENABLE_EXTERNAL_LIBS OFF)
# list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindOgg.cmake libsndfile/cmake/FindVorbis.cmake libsndfile/cmake/FindFLAC.cmake libsndfile/cmake/FindOpus.cmake)
#list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindOgg.cmake)
#list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindVorbis.cmake)
#list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindFLAC.cmake)
#list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindOpus.cmake)
add_subdirectory(external_libraries/libsndfile)
include_directories(external_libraries/libsndfile/include)

target_link_libraries(openal_mwe OpenAL SndFile::sndfile)
