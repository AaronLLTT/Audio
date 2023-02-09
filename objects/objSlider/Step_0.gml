/// @description Follow the mouse && update the audio effect 
if (moving && mySlide.sliderType != "Boolean") {
	x = mouse_x;
	x = clamp(x, maxLow, maxHigh);
}
else if (moving && mySlide.sliderType == "Boolean") {
	if (mouse_x <= maxLow) {
		x = maxLow;
	}
	else if (mouse_x >= maxHigh) {
		x = maxHigh;
	}
}

//Normalize the values between 0 and 1
var diff = maxHigh - maxLow;
var points = x - maxLow;
var percent = points / diff;
//Adjust for values outside of 0-1
if (mySlide.myVariable == "gain" || mySlide.myVariable == "time") {
	percent *= 10;
}
else if (mySlide.myVariable == "cutoff") {
	percent *= 2000;
}
else if (mySlide.myVariable == "quality") {
	percent *= 100;
}

//Update the audio effect by calling parent's functions
if (moving) {
	if (mySlide.sliderType == "Boolean") {
		mySlide.SetValue(percent);
		mySlide.myEffect.ApplyEffect();
	}
	else {
		mySlide.SetValue(percent);
		mySlide.myEffect.ApplyEffect();
	}
}