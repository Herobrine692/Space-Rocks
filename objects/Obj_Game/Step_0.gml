if(score >= 1000){
	room_goto(rm_win)
	alarm_set(0, -1)
}
if(lives <= 0){
	room_goto(rm_gameover)
	alarm_set(0, 0)
}
if(alarm_get(0) == 0){
	var side = irandom_range(1, 4);
	if(side == 1){
		instance_create_layer(490, 32, "Asteroids", choose(obj_big_rock, obj_medium_rock, obj_small_rock));
	}
	if(side == 2){
		instance_create_layer(948, 490, "Asteroids", obj_big_rock);
	}
	if(side == 3){
		instance_create_layer(490, 948, "Asteroids", obj_big_rock);
	}
	if(side == 4){
		instance_create_layer(32, 490, "Asteroids", obj_big_rock);
	}
	alarm_set(0, 60)
}