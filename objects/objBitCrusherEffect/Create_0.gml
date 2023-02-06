/// @description Data 
myType = "Bit Crusher";
isBypassed = true;
driveSize = 1;
factor = 1;
resolution = 1;
mix = 1;

ApplyEffect = function() {
	var bitCrusherEffect = audio_effect_create(AudioEffectType.Bitcrusher);

	bitCrusherEffect.bypass = isBypassed;
	bitCrusherEffect.drive = driveSize;
	bitCrusherEffect.factor = factor;
	bitCrusherEffect.resolution = resolution;
	bitCrusherEffect.mix = mix;

	audio_bus_main.effects[1] = bitCrusherEffect;
}