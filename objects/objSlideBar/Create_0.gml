/// @description Create a slider 
mySlider = instance_create_layer(x, y + 3, "Instances", objSlider, {
	mySlide : id,
});

SetValue = function(newValue) {
	variable_instance_set(myEffect, myVariable, newValue);
}