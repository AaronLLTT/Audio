/// @description Pause 

if (image_index == 1) {
	audio_pause_sound(global.CurrentSound);
}
else {
	audio_resume_sound(global.CurrentSound);
}

audio_play_sound(sndMenu_Click, 10, false);