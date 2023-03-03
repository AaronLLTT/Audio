/// @description 
var _loop_start, _loop_end, _current_time, _total_time, _loop_active;

draw_set_font(fnt_text_titles);
draw_set_halign(fa_center);

_current_time = audio_sound_get_track_position(sound);
_total_time = audio_sound_length(sound);

draw_text(room_width / 2, 100, string(_total_time) + " / " + string(_current_time));

_loop_start = audio_sound_get_loop_start(sound);
_loop_end = audio_sound_get_loop_end(sound);

draw_text(room_width / 2, 150, "Loop Start: " + string(_loop_start) + " || Loop End: " + string(_loop_end));

_loop_active = audio_sound_get_loop(sound);

if (_loop_active) {
	_loop_active = "Loop is currently active";
	
	//Draw a rotating symbol while active
	--angle;
	draw_sprite_ext(sprite_index, 1, x, y, 1, 1, angle, c_white, 1);
}
else {
	draw_sprite_ext(sprite_index, 1, x, y, 1, 1, angle, c_white, 1);
	_loop_active = "Loop is NOT active.";
}

draw_text(room_width / 2, 200, _loop_active);

draw_self();