/// @description Set emitter properties

//Create an emitter
myEmit = audio_emitter_create();

//Set its position
audio_emitter_position(myEmit, x, y, 0);

//Set falloff variables
audio_emitter_falloff(myEmit, 100, 400, 1.2);

//Begin playing the sound
audio_play_sound_on(myEmit, mySound, true, 100);