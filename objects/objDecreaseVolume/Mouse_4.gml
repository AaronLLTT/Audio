/// @description Decrease Volume 

//Decrease the volume
global.MasterVolume -= 0.1;

//Play a sound if volume is too low
if (global.MasterVolume < 0) {
	audio_play_sound(snd_Deny, 1, false);
}
else {
	audio_play_sound(sndMenu_Click, 1, false);
}

//Keep the volume between 0 and 1
global.MasterVolume = clamp(global.MasterVolume, 0, 1);


//Set the main bus to MasterVolume
if (audio_bus_main.gain != 0) {
	audio_bus_main.gain = global.MasterVolume;
}
//If we're muted, fix that when increasing volume
else if (audio_bus_main.gain == 0 && objMuteMusic.isMute == true) {
	objMuteMusic.isMute = false;
	objMuteMusic.image_index = 0;
	audio_bus_main.gain = global.MasterVolume;
}
else {
	audio_bus_main.gain = global.MasterVolume;
}





