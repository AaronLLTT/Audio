/// @description Set data

myEmit = audio_emitter_create();

audio_play_sound_on(myEmit, snd_car_engine, true, 10);

hspeed = 10;

audio_emitter_velocity(myEmit, hspeed, 0, 0);

audio_emitter_falloff(myEmit, 200, 400, 1);

image_blend = c_red;