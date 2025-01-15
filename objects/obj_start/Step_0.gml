switch(room){
	case rm_start:
		if(keyboard_check_pressed(vk_enter)){
			room_goto(rm_game)
		}
		break;
	case rm_game:
		if(score >= 5000){
			room_goto(rm_win);
			alarm_set(0, -1);
		}
		if(lives <= 0){
			room_goto(rm_gameover)
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
		if(keyboard_check_pressed(vk_enter)){
			room_restart()
		}
		break;
}