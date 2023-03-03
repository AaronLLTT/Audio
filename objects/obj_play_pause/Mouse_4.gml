/// @description Pause 

if (image_index == 1) {
	audio_pause_sound(global.CURRENT_SOUND);
}
else {
	audio_resume_sound(global.CURRENT_SOUND);
}

audio_play_sound(snd_Menu_Click, 10, false);