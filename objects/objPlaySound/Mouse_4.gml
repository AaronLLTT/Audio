/// @description Play effect 
audio_stop_all();

var delayEffect = audio_effect_create(AudioEffectType.Delay);
	
delayEffect.bypass = false;
delayEffect.time = 1;
delayEffect.feedback = 0.25;
delayEffect.mix = 1;

audio_bus_main.effects[0] = delayEffect;
audio_bus_main.effects[1] = delayEffect;
audio_bus_main.effects[2] = delayEffect;
audio_bus_main.effects[3] = delayEffect;

if (image_index == 1) {
	audio_play_sound(mySound, 1, false);
}