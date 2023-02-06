/// @description Change Name 

mySoundName = audio_get_name(mySound);
mySoundName = string_replace(mySoundName, "snd", "");
mySoundName = string_replace(mySoundName, "_", " ");