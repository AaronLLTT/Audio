/// @description Set up the manager 

//Set the global playing sound
global.CurrentSound = audio_play_sound(sndBattle_Music, 100, false, 0);

//Set an alarm to pause the music right away
alarm[0] = 2;

//Keep track of which song we're on
index = 0;

//Fill up the queue
playlist[index++] = audio_get_name(sndBattle_Music);
playlist[index++] = audio_get_name(sndBattleMusic2);
playlist[index++] = audio_get_name(sndBattleMusic3);
playlist[index++] = audio_get_name(sndBattleMusic4);
playlist[index++] = audio_get_name(sndBattleMusic5);

//Set back to 0
index = 0;

//Function to skip to the next song
SkipSong = function() {
	if (index + 1 > array_length(playlist)) {
		audio_play_sound(snd_Deny, 100, false);
	}
	else {
		audio_stop_sound(global.CurrentSound);
		++index;
		global.CurrentSound = audio_play_sound(asset_get_index(playlist[index]), 100, false);
	}
}

//Function to go back a song
PreviousSong = function() {
	if (index - 1 < 0) {
		audio_play_sound(snd_Deny, 1, false);
	}
	else {
		audio_stop_sound(global.CurrentSound);
		--index;
		global.CurrentSound = audio_play_sound(asset_get_index(playlist[index]), 100, false);
	}
}