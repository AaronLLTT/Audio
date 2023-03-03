/// @description Draw Room Name 

draw_self();

draw_set_valign(fa_middle);
draw_set_font(fnt_info);

if (image_xscale == -1) {
	draw_set_halign(fa_right);
}
else {
	draw_set_halign(fa_left);
}

draw_text(x + (32 * image_xscale), y, roomName);