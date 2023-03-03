/// @description Pause

//Reset the gain to normal
audio_sound_gain(global.CURRENT_SOUND, 1, 0);

//Pause the sound
audio_pause_sound(global.CURRENT_SOUND);