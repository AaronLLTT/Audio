/// @description Fill the name variable 

my_sound_name = audio_get_name(my_sound);
my_sound_name = string_replace(my_sound_name, "snd", "");
my_sound_name = string_replace(my_sound_name, "_", " ");
my_sound_name = string_replace(my_sound_name, "_", " ");
my_sound_name = string_lower(my_sound_name);