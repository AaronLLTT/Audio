/// @description Toggle Music 

isMute = !isMute;

image_index = isMute;

//Mute or unmute normally
if (global.MasterVolume == 0 || global.MasterVolume == 1) {
	audio_bus_main.gain = !isMute;
}
else if (isMute == true) {
	audio_bus_main.gain = 0;
}
else if (isMute == false) {
	audio_bus_main.gain = global.MasterVolume;
}