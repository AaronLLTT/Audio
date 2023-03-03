/// @description Change Songs

if (audio_is_playing(snd_cyberpunk_theme)) {
	audio_stop_sound(snd_cyberpunk_theme);
	sound = audio_play_sound(snd_dreamy_theme, 1, true);
}
else if (audio_is_playing(snd_dreamy_theme)) {
	audio_stop_sound(snd_dreamy_theme);
	sound = audio_play_sound(snd_cyberpunk_theme, 1, true);
}