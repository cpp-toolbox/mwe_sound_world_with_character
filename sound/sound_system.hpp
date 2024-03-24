#ifndef OPENAL_MWE_SOUND_SYSTEM_HPP
#define OPENAL_MWE_SOUND_SYSTEM_HPP

#include "al.h"
#include <map>

class SoundSystem {
public:
    SoundSystem();
    ~SoundSystem();
    void load_sound_into_system_for_playback(const std::string& sound_name, const char *filename);
    void create_sound_source(const std::string& source_name);
    void play_sound(const std::string& source_name, const std::string& sound_name);
    void set_listener_position(float x, float y, float z);
private:
    std::map<std::string, ALuint> sound_name_to_loaded_buffer;
    std::map<std::string, ALuint> source_name_to_source_id;
    void initialize_openal();
    void deinitialize_openal();
};

#endif //OPENAL_MWE_SOUND_SYSTEM_HPP
