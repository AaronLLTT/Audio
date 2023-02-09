/// @description Set Emitter Data

//Create an emitter
myEmit = audio_emitter_create();

//Play the wind sound on this emitter
audio_play_sound_on(myEmit, snd_rockslide, true, 10);

//Begin moving
hspeed = 10;

//Set the velocity of the emitter
//This needs to change when hspeed changes
audio_emitter_velocity(myEmit, hspeed, 0, 0);

//Set the falloff of this emitter
audio_emitter_falloff(myEmit, 200, 400, 1);

//If the falloff model hasn't been set before, set it
//audio_falloff_set_model()

//Change its color
image_blend = c_red;