/// @description Set effect

var _echo = audio_effect_create(AudioEffectType.Reverb1);
_echo.size = echo_amount;
_echo.damp = .5;
_echo.mix = .75;
_echo.bypass = false;

//Change color
if (obj_player.x > x) {
	audio_bus_main.effects[0] = _echo;
	
	image_blend = c_green;
}
else {
	//Change it back based on echo amount
	switch (_echo.size) {
		case 0.5:
			audio_bus_main.effects[0] = undefined;
		break;
		case 1:
			_echo.size = 0.5;
			audio_bus_main.effects[0] = _echo;
		break;
	}
	
	image_blend = c_red;
}