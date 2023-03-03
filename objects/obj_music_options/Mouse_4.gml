/// @description Close Sequence

//Close the open sequence
if (!sequence_exists(layer_sequence_get_sequence(mySequence))) {
	mySequence = layer_sequence_create("Instances", x, y, seqMusicOptionsAppear);
	var seqInst = layer_sequence_get_instance(mySequence);
	sequence_instance_override_object(seqInst, obj_music_options, id);
}

//Create the options
if (sequence_exists(layer_sequence_get_sequence(mySequence)) && layer_sequence_is_finished(mySequence)) {
	layer_sequence_destroy(mySequence); 
	
	mySequence = layer_sequence_create("Instances", xstart, ystart, seqMusicOptionsVanish);
	var seqInst = layer_sequence_get_instance(mySequence);
	sequence_instance_override_object(seqInst, obj_music_options, id);
	sequence_instance_override_object(seqInst, obj_mute_music, instance_find(obj_mute_music, 0));
}
