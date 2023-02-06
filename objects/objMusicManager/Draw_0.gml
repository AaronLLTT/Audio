/// @description Draw songs 

draw_set_font(fntTextTitles);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
for(var i = index; i < array_length(playlist); ++i) {
	if (i == 0) {
		draw_text(room_width / 3, 128, "Current song: " + string(playlist[i]));
	}
	else {
		draw_text(room_width / 3, 128 + ((i - index) * 48), "Upcoming song: " + string(playlist[i]));
	}
}