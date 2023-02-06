/// @description Insert 

//Destroy last sequence
if (layer_sequence_is_finished(mySequence) && layer_sequence_get_sequence(mySequence).name == "seqMusicOptionsVanish") {
	layer_sequence_destroy(mySequence);
}




