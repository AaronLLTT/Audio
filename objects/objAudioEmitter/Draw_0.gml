/// @description Draw Distance 
draw_self();

draw_line_color(x, y, objListener.x, objListener.y, c_red, c_blue);

var distance = point_distance(x, y, objListener.x, objListener.y);

draw_set_halign(fa_center);
draw_set_font(fntInfo);
draw_set_valign(fa_middle);
draw_text(x - 15, y + 50, distance);