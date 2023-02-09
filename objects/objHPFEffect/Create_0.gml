/// @description Set data for audio effect  

myType = "High Pass Filter";
isBypassed = true;
cutoff = 2000;
quality = 100;

//Function to apply / update the audio effect
ApplyEffect = function() {
	var HPFEffect = audio_effect_create(AudioEffectType.HPF2);
	
	HPFEffect.bypass = isBypassed;
	HPFEffect.cutoff = cutoff;
	HPFEffect.q = quality;

	audio_bus_main.effects[4] = HPFEffect;
}