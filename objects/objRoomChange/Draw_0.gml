/// @description Draw Room Name 

draw_self();

if (image_xscale == -1) {
	draw_set_halign(fa_right);
}
else {
	draw_set_halign(fa_left);
}

draw_set_valign(fa_middle);
draw_set_font(fntInfo);
draw_text(x + (32 * image_xscale), y, roomName);