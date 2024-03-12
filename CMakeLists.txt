cmake_minimum_required(VERSION 3.10)

project(openal_mwe)

add_executable(openal_mwe main.cpp)

set(LIBTYPE STATIC)

add_subdirectory(openal-soft)
include_directories(openal-soft/include)

set(ENABLE_EXTERNAL_LIBS OFF)
# list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindOgg.cmake libsndfile/cmake/FindVorbis.cmake libsndfile/cmake/FindFLAC.cmake libsndfile/cmake/FindOpus.cmake)
#list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindOgg.cmake)
#list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindVorbis.cmake)
#list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindFLAC.cmake)
#list(APPEND CMAKE_MODULE_PATH libsndfile/cmake/FindOpus.cmake)
add_subdirectory(libsndfile)
include_directories(libsndfile/include)

target_link_libraries(openal_mwe OpenAL SndFile::sndfile)
