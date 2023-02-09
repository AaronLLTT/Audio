/// @description Fill the name variable 

mySoundName = audio_get_name(mySound);
mySoundName = string_replace(mySoundName, "snd", "");
mySoundName = string_replace(mySoundName, "_", " ");