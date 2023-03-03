/// @description Draw Values 
draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_info);

var _vert_space = 100;
var _vert_padding = 100;

draw_text(x - 30, y - 40, "Reverb");
if (is_bypassed) {
	draw_text(x - 75, y + _vert_space, "Bypass: Enabled");
	image_index = 1;
}
else {
	draw_text(x - 75, y + _vert_space, "Bypass: Disabled");
	image_index = 0;
}
_vert_space += _vert_padding;
draw_text(x - 75, y + _vert_space, "Reverb Damp: " + string(reverb_damp));
_vert_space += _vert_padding;
draw_text(x - 75, y + _vert_space, "Reverb Size: " + string(reverb_size));
_vert_space += _vert_padding;
draw_text(x - 75, y + _vert_space, "Effect Mix: " + string(reverb_mix));