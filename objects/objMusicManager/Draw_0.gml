/// @description Draw songs 

//Set the drawing properties for the text
draw_set_font(fnt_text_titles);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//Draw the playlist
for(var _i = index; _i < array_length(playlist); ++_i) 
{
	var _my_sound_name = playlist[_i];
	_my_sound_name = string_replace(_my_sound_name, "snd", "");
	_my_sound_name = string_replace(_my_sound_name, "_", " ");
	_my_sound_name = string_replace(_my_sound_name, "_", " ");
	_my_sound_name = string_replace(_my_sound_name, "_", " ");
	_my_sound_name = string_lower(_my_sound_name);
	
	if (_i == index) 
	{
		draw_text(room_width / 3, 128, "Current song: " + _my_sound_name);
	}
	else 
	{
		draw_text(room_width / 3, 128 + ((_i - index) * 48), "Upcoming song: " + _my_sound_name);
	}
}