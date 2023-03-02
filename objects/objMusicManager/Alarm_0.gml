/// @description Pause

//Reset the gain to normal
audio_sound_gain(global.CurrentSound, 1, 0);

//Pause the sound
audio_pause_sound(global.CurrentSound);