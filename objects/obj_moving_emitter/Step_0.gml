/// @description Move and set Position

//Wrap this emitter around the room
move_wrap(true, true, sprite_width);

//Update emitter position based on x and y
audio_emitter_position(my_emit, x, y, 0);