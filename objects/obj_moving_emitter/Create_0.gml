/// @description Set Emitter Data

//Create an emitter
my_emit = audio_emitter_create();

//Play the wind sound on this emitter
audio_play_sound_on(my_emit, snd_inferno, true, 10);

//Begin moving
hspeed = 3;

//Set the velocity of the emitter
//This needs to change when hspeed changes
audio_emitter_velocity(my_emit, hspeed, 0, 0);

//Set the falloff of this emitter
audio_emitter_falloff(my_emit, 100, 450, 1);

//If the falloff model hasn't been set before, set it
//audio_falloff_set_model()

//Change its color
image_blend = c_red;