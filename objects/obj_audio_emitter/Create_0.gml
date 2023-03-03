/// @description Set emitter properties

//Create an emitter
my_emitter = audio_emitter_create();

//Set its position
audio_emitter_position(my_emitter, x, y, 0);

//Set falloff variables
audio_emitter_falloff(my_emitter, 100, 400, 1.2);

//Begin playing the sound
audio_play_sound_on(my_emitter, my_sound, true, 100);