/// @description Vars 

isMute = false;

//Check if volume is at 0, update isMute
if (audio_bus_main.gain == 0) {
	isMute = true;
}

//Change frame if necessary
image_index = isMute;