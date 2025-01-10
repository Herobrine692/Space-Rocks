instance_create_layer(x, y, "Asteroids", obj_medium_ock);
instance_create_layer(x, y, "Asteroids", obj_medium_ock);
instance_destroy();
with(other){
	instance_destroy()
}
audio_stop_sound(snd_music);
audio_play_sound(snd_augh, 10, false);