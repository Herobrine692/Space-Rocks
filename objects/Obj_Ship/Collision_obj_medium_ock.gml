if(alarm_get(0) != 0){
	health -= 1;
	if(health < 3){
		instance_create_layer(x, y, "Player_Instances", Obj_Ship_Hit);
		sprite_set_speed(Spr_Ship_Hit, 3, spritespeed_framespersecond);
		alarm_set(0, 200);
	}else if(health < 1){
		instance_create_layer(x, y, "Player_Instances", Obj_Ship_Low_Health);
		sprite_set_speed(Spr_Ship_Low_Health, 3, spritespeed_framespersecond);
	}else if(health <=0){
		repeat(10){
			instance_create_layer(x, y, "Player_Instances", obj_debris);
		}
		instance_destroy();
		lives -= 1;
		if(lives == 1){
			instance_create_layer(490, 490, "Last_Clance", Obj_Last_Chance);
		}
	}
}