/// @description Vars 

myType = "High Pass Filter";
isBypassed = true;
cutoff = 2000;
quality = 100;

ApplyEffect = function() {
	var HPFEffect = audio_effect_create(AudioEffectType.HPF2);
	
	HPFEffect.bypass = isBypassed;
	HPFEffect.cutoff = cutoff;
	HPFEffect.q = quality;

	audio_bus_main.effects[4] = HPFEffect;
}