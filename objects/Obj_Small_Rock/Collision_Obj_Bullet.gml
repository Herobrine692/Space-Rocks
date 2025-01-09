instance_destroy();
repeat(10){
	instance_create_layer(x, y, "Asteroids", obj_debris);
}
score += 10;