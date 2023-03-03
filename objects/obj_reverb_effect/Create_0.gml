/// @description Set data for audio effect   

my_type = "Reverb";
is_bypassed = true;
reverb_size = 1;
reverb_damp = 1;
reverb_mix = 1;

//Function to apply / update the audio effect
apply_effect = function() {
	var _reverb_effect = audio_effect_create(AudioEffectType.Reverb1);
	
	_reverb_effect.bypass = is_bypassed;
	_reverb_effect.size = reverb_size;
	_reverb_effect.damp = reverb_damp;
	_reverb_effect.mix = reverb_mix;

	audio_bus_main.effects[0] = _reverb_effect;
}