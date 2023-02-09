/// @description Draw Volume 

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fntInfo);
draw_text(x, y + 50, "Volume level is at " + string(round(global.MasterVolume * 100)));