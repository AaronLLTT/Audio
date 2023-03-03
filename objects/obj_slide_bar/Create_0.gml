/// @description Create a slider 

my_slider = instance_create_layer(x, y + 3, "Instances", obj_slider, {
	my_slide : id,
});

set_value = function(_new_value) {
	variable_instance_set(my_effect, my_variable, _new_value);
}