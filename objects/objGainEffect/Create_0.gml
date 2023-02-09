/// @description Set data for audio effect 

myType = "Gain";
isBypassed = true;
gain = 10;

//Function to apply / update the audio effect
ApplyEffect = function() {
	var gainEffect = audio_effect_create(AudioEffectType.Gain);
	
	gainEffect.bypass = isBypassed;
	gainEffect.gain = gain;

	audio_bus_main.effects[3] = gainEffect;
}