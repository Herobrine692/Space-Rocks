instance_create_layer(x, y, "Asteroids", obj_medium_rock);
instance_create_layer(x, y, "Asteroids", obj_medium_rock);
instance_destroy();
score += 50;
audio_play_sound(snd_boom, 10, false);