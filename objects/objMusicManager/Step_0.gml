/// @description Move to the next song 

//The current song finished
if (!audio_is_playing(global.CurrentSound)) {
	SkipSong();
}