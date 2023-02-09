/// @description Set Sound model 

//Set the orientation of the listener
audio_listener_set_orientation(0, 1, 1, 0, 0, 0, 1);

//Set the global falloff model
audio_falloff_set_model(audio_falloff_exponent_distance_scaled);

following = false;