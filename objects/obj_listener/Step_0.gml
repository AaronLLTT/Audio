/// @description Update listener position 

audio_listener_set_position(0, x, y, 0);

//Move
if (following) {
	x = mouse_x;
	y = mouse_y;
}
else {
	x = xstart;
	y = ystart;
}