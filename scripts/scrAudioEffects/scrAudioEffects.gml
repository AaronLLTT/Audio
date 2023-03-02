///@description Reset all the effects applied to the main audio bus
function reset_audio_effects() {
	for(var i = 0; i < 8; ++i) {
		//By setting the struct to undefined, it resets all the properties
		audio_bus_main.effects[i] = undefined;
	}
}