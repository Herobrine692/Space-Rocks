instance_destroy();
repeat(10){
	instance_create_layer(x, y, "Asteroids", Obj_Debris);
}
score += 10;