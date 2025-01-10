instance_destroy();
instance_create_layer(x, y, "Asteroids", obj_small_rock);
instance_create_layer(x, y, "Asteroids", obj_small_rock);
score += 20;
audio_play_sound(snd_boom, 10, false)