/// @description Set data for audio effect 

my_type = "Gain";
is_bypassed = true;
gain = 10;

//Function to apply / update the audio effect
apply_effect = function() {
	var _gainEffect = audio_effect_create(AudioEffectType.Gain);
	
	_gainEffect.bypass = is_bypassed;
	_gainEffect.gain = gain;

	audio_bus_main.effects[3] = _gainEffect;
}