/// @description Change image if playing 

if (audio_is_playing(my_sound) == false) {
	image_index = 1;
}
else {
	image_index = 0;
}