/// @description Draw Values 
draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_info);

var vertSpace = 100;
var vertPadding = 100;

draw_text(x - 30, y - 40, "Reverb");
if (isBypassed) {
	draw_text(x - 75, y + vertSpace, "Bypass: Enabled");
	image_index = 1;
}
else {
	draw_text(x - 75, y + vertSpace, "Bypass: Disabled");
	image_index = 0;
}
vertSpace += vertPadding;
draw_text(x - 75, y + vertSpace, "Reverb Damp: " + string(reverbDamp));
vertSpace += vertPadding;
draw_text(x - 75, y + vertSpace, "Reverb Size: " + string(reverbSize));
vertSpace += vertPadding;
draw_text(x - 75, y + vertSpace, "Effect Mix: " + string(reverbMix));