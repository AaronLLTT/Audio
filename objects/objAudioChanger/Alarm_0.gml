/// @description Set effect
var echo = audio_effect_create(AudioEffectType.Reverb1);
echo.size = echoAmount;
echo.damp = .5;
echo.mix = .75;
echo.bypass = false;
audio_bus_main.effects[0] = echo;