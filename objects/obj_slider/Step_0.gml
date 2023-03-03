/// @description Follow the mouse && update the audio effect 
if (moving && my_slide.slider_type != "Boolean") {
	x = mouse_x;
	x = clamp(x, max_low, max_high);
}
else if (moving && my_slide.slider_type == "Boolean") {
	if (mouse_x <= max_low) {
		x = max_low;
	}
	else if (mouse_x >= max_high) {
		x = max_high;
	}
}

//Normalize the values between 0 and 1
var _diff = max_high - max_low;
var _points = x - max_low;
var _percent = _points / _diff;
//Adjust for values outside of 0-1
if (my_slide.my_variable == "gain" || my_slide.my_variable == "time") {
	_percent *= 10;
}
else if (my_slide.my_variable == "cutoff") {
	_percent *= 2000;
}
else if (my_slide.my_variable == "quality") {
	_percent *= 100;
}

//Update the audio effect by calling parent's functions
if (moving) {
	if (my_slide.slider_type == "Boolean") {
		my_slide.set_value(_percent);
		my_slide.my_effect.apply_effect();
	}
	else {
		my_slide.set_value(_percent);
		my_slide.my_effect.apply_effect();
	}
}