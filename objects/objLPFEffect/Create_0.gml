/// @description Set data for audio effect  

myType = "Low Pass Filter";
isBypassed = true;
cutoff = 2000;
quality = 100;

//Function to apply / update the audio effect
ApplyEffect = function() {
	var LPFEffect = audio_effect_create(AudioEffectType.LPF2);
	
	LPFEffect.bypass = isBypassed;
	LPFEffect.cutoff = cutoff;
	LPFEffect.q = quality;

	audio_bus_main.effects[5] = LPFEffect;
}