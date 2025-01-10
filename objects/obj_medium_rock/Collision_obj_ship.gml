instance_create_layer(x, y, "Asteroids", obj_small_rock);
instance_create_layer(x, y, "Asteroids", obj_small_rock);
instance_destroy();
with(other){
	instance_destroy();
	lives -= 1;
}
audio_play_sound(snd_augh, 10, false);
alarm_set(0, 180);