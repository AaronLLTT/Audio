/// @description Draw Values 
draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_info);

var _vert_space = 100;
var vertPadding = 100;

draw_text(x - 25, y - 50, "Delay");
if (is_bypassed) {
	draw_text(x - 75, y + _vert_space, "Bypass: Enabled");
	image_index = 1;
}
else {
	draw_text(x - 75, y + _vert_space, "Bypass: Disabled");
	image_index = 0;
}
_vert_space += vertPadding;
draw_text(x - 75, y + _vert_space, "Time: " + string(time));
_vert_space += vertPadding;
draw_text(x - 75, y + _vert_space, "Feedback: " + string(feedback));
_vert_space += vertPadding;
draw_text(x - 75, y + _vert_space, "Effect Mix: " + string(mix));