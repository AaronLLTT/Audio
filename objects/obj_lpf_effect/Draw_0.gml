/// @description Draw Values 
draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_info);

var _vert_space = 100;
var _vert_padding = 100;

draw_text(x - 70, y - 55, "Low Pass Filter");
if (is_bypassed) {
	draw_text(x - 75, y + _vert_space, "Bypass: Enabled");
	image_index = 1;
}
else {
	draw_text(x - 75, y + _vert_space, "Bypass: Disabled");
	image_index = 0;
}
_vert_space += _vert_padding;
draw_text(x - 75, y + _vert_space, "Cutoff Freq: " + string(cutoff));
_vert_space += _vert_padding;
draw_text(x - 75, y + _vert_space, "Quality: : " + string(quality));