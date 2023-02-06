/// @description Insert 
myEmit = audio_emitter_create();

audio_emitter_position(myEmit, x, y, 0);

audio_emitter_falloff(myEmit, 50, 300, 1.2);

audio_play_sound_on(myEmit, mySound, true, 100);