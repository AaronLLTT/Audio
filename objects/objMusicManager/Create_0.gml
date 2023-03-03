/// @description Set up the manager 

//Set the global playing sound
global.CURRENT_SOUND = audio_play_sound(snd_cyberpunk_theme, 100, false, 0);

//Set an alarm to pause the music right away
alarm[0] = 2;

//Keep track of which song we're on
index = 0;

//Fill up the queue
playlist[index++] = audio_get_name(snd_aquatic_theme);
playlist[index++] = audio_get_name(snd_desert_tomb_theme);
playlist[index++] = audio_get_name(snd_dreamy_theme);
playlist[index++] = audio_get_name(snd_neon_city_theme);
playlist[index++] = audio_get_name(snd_volcanic_theme);
playlist[index++] = audio_get_name(snd_wintry_embrace_theme);

//Set back to 0
index = 0;

//Function to skip to the next song
skip_song = function() {
	if (index + 1 > array_length(playlist)) {
		audio_play_sound(snd_Deny, 100, false);
	}
	else {
		audio_stop_sound(global.CURRENT_SOUND);
		++index;
		global.CURRENT_SOUND = audio_play_sound(asset_get_index(playlist[index]), 100, false);
	}
}

//Function to go back a song
previous_song = function() {
	if (index - 1 < 0) {
		audio_play_sound(snd_Deny, 1, false);
	}
	else {
		audio_stop_sound(global.CURRENT_SOUND);
		--index;
		global.CURRENT_SOUND = audio_play_sound(asset_get_index(playlist[index]), 100, false);
	}
}