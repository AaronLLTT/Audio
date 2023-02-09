/// @description Set data for audio effect 

myType = "Bit Crusher";
isBypassed = true;
driveSize = 1;
factor = 1;
resolution = 1;
mix = 1;

//Function to apply / update the audio effect
ApplyEffect = function() {
	var bitCrusherEffect = audio_effect_create(AudioEffectType.Bitcrusher);

	bitCrusherEffect.bypass = isBypassed;
	bitCrusherEffect.drive = driveSize;
	bitCrusherEffect.factor = factor;
	bitCrusherEffect.resolution = resolution;
	bitCrusherEffect.mix = mix;

	audio_bus_main.effects[1] = bitCrusherEffect;
}