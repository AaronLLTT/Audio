/// @description Toggle Music 

//Toggle variable
isMute = !isMute;

//Change image
image_index = isMute;

//Mute or unmute normally
if (global.MasterVolume == 0 || global.MasterVolume == 1) {
	audio_bus_main.gain = !isMute;
}
//Update main gain to 0
else if (isMute == true) {
	audio_bus_main.gain = 0;
}
//Update master gain and variable
else if (isMute == false) {
	audio_bus_main.gain = global.MasterVolume;
}