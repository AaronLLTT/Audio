/// @description Vars 

myType = "Delay";
isBypassed = true;
time = 10;
feedback = 1;
mix = 1;


ApplyEffect = function() {
	var delayEffect = audio_effect_create(AudioEffectType.Delay);
	
	delayEffect.bypass = isBypassed;
	delayEffect.time = time;
	delayEffect.feedback = feedback;
	delayEffect.mix = mix;

	audio_bus_main.effects[2] = delayEffect;
}