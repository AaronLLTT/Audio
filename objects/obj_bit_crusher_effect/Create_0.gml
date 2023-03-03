/// @description Set data for audio effect 

my_type = "Bit Crusher";
is_bypassed = true;
drive_size = 1;
factor = 1;
resolution = 1;
mix = 1;

//Function to apply / update the audio effect
apply_effect = function() {
	var bitCrusherEffect = audio_effect_create(AudioEffectType.Bitcrusher);

	bitCrusherEffect.bypass = is_bypassed;
	bitCrusherEffect.drive = drive_size;
	bitCrusherEffect.factor = factor;
	bitCrusherEffect.resolution = resolution;
	bitCrusherEffect.mix = mix;

	audio_bus_main.effects[1] = bitCrusherEffect;
}