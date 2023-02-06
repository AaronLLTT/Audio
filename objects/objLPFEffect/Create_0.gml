/// @description Vars 

myType = "Low Pass Filter";
isBypassed = true;
cutoff = 2000;
quality = 100;

ApplyEffect = function() {
	var LPFEffect = audio_effect_create(AudioEffectType.LPF2);
	
	LPFEffect.bypass = isBypassed;
	LPFEffect.cutoff = cutoff;
	LPFEffect.q = quality;

	audio_bus_main.effects[5] = LPFEffect;
}