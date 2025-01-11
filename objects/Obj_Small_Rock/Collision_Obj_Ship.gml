repeat(10){
	instance_create_layer(x, y, "Asteroids", obj_debris);
}
instance_destroy();
with(other){
	instance_destroy();
	lives -= 1;
}
audio_play_sound(snd_augh, 10, false);