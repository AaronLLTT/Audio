/// @description Insert 

global.CurrentSound = audio_play_sound(sndBattle_Music, 100, false, 1);
alarm[0] = 2;
index = 0;

playlist[index++] = audio_get_name(sndBattle_Music);
playlist[index++] = audio_get_name(sndBattleMusic2);
playlist[index++] = audio_get_name(sndBattleMusic3);
playlist[index++] = audio_get_name(sndBattleMusic4);
playlist[index++] = audio_get_name(sndBattleMusic5);

index = 0;

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