/// @description Draw Values 
draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fntInfo);

var vertSpace = 100;
var vertPadding = 100;

draw_text(x - 30, y - 30, "Gain");
if (isBypassed) {
	draw_text(x - 75, y + vertSpace, "Bypass: Enabled");
	image_index = 1;
}
else {
	draw_text(x - 75, y + vertSpace, "Bypass: Disabled");
	image_index = 0;
}
vertSpace += vertPadding;
draw_text(x - 75, y + vertSpace, "Gain: " + string(gain));