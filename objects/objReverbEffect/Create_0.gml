/// @description Vars 

myType = "Reverb";
isBypassed = true;
reverbSize = 1;
reverbDamp = 1;
reverbMix = 1;


ApplyEffect = function() {
	var reverbEffect = audio_effect_create(AudioEffectType.Reverb1);
	
	reverbEffect.bypass = isBypassed;
	reverbEffect.size = reverbSize;
	reverbEffect.damp = reverbDamp;
	reverbEffect.mix = reverbMix;

	audio_bus_main.effects[0] = reverbEffect;
}