instance_create_layer(x, y, "Asteroids", obj_small_rock);
instance_create_layer(x, y, "Asteroids", obj_small_rock);
instance_destroy();
score += 20;
audio_play_sound(snd_boom, 10, false)