/// @description Draw Distance 
draw_self();

draw_line_color(x, y, obj_listener.x, obj_listener.y, c_red, c_blue);

var _distance = point_distance(x, y, obj_listener.x, obj_listener.y);

draw_set_halign(fa_center);
draw_set_font(fnt_info);
draw_set_valign(fa_middle);
draw_text(x - 15, y + 50, _distance);