/// @description Set data for audio effect  

my_type = "High Pass Filter";
is_bypassed = true;
cutoff = 2000;
quality = 100;

//Function to apply / update the audio effect
apply_effect = function() {
	var _HPFEffect = audio_effect_create(AudioEffectType.HPF2);
	
	_HPFEffect.bypass = is_bypassed;
	_HPFEffect.cutoff = cutoff;
	_HPFEffect.q = quality;

	audio_bus_main.effects[4] = _HPFEffect;
}