/// @description Set data for audio effect  

my_type = "Low Pass Filter";
is_bypassed = true;
cutoff = 2000;
quality = 100;

//Function to apply / update the audio effect
apply_effect = function() {
	var _LPFEffect = audio_effect_create(AudioEffectType.LPF2);
	
	_LPFEffect.bypass = is_bypassed;
	_LPFEffect.cutoff = cutoff;
	_LPFEffect.q = quality;

	audio_bus_main.effects[5] = _LPFEffect;
}