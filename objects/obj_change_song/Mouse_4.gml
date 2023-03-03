/// @description Change Songs

if (image_xscale == 1) {
	if (audio_is_playing(snd_cyberpunk_theme)) {
		audio_stop_sound(snd_cyberpunk_theme);
		obj_loop.sound = audio_play_sound(snd_dreamy_theme, 1, true);
	}
}
else {
	if (audio_is_playing(snd_dreamy_theme)) {
		audio_stop_sound(snd_dreamy_theme);
		obj_loop.sound = audio_play_sound(snd_cyberpunk_theme, 1, true);
	}
}