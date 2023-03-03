/// @description Set data for audio effect 

my_type = "Delay";
is_bypassed = true;
time = 10;
feedback = 1;
mix = 1;

//Function to apply / update the audio effect
apply_effect = function() {
	var delayEffect = audio_effect_create(AudioEffectType.Delay);
	
	delayEffect.bypass = is_bypassed;
	delayEffect.time = time;
	delayEffect.feedback = feedback;
	delayEffect.mix = mix;

	audio_bus_main.effects[2] = delayEffect;
}