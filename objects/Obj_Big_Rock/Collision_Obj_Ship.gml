instance_create_layer(x, y, "Asteroids", obj_medium_rock);
instance_create_layer(x, y, "Asteroids", obj_medium_rock);
instance_destroy();
with(other){
	instance_destroy()
	lives -= 1;
}
audio_play_sound(snd_augh, 10, false);