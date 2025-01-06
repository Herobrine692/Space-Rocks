globalvar player_speed;
globalvar player_direction;
globalvar player_angle;
if(alarm_get(0) != 0){
	health -= 1;
	if(health < 3){
		instance_create_layer(x, y, "Player_Instances", Obj_Ship_Hit);
		with(Obj_Ship_Hit){
			speed = player_speed;
			direction = player_direction;
			image_angle = player_angle;
		}
		sprite_set_speed(Spr_Ship_Hit, 3, spritespeed_framespersecond);
		alarm_set(0, 200);
	}else if(health < 1){
		instance_create_layer(x, y, "Player_Instances", Obj_Ship_Low_Health);
		with(Obj_Ship_Low_Health){
			speed = player_speed;
			direction = player_direction;
			image_angle = player_angle;
		}
		sprite_set_speed(Spr_Ship_Low_Health, 3, spritespeed_framespersecond);
	}else if(health <=0){
		repeat(10){
			instance_create_layer(x, y, "Player_Instances", Obj_Debris);
		}
		instance_destroy();
		lives -= 1;
		if(lives == 1){
			instance_create_layer(490, 490, "Last_Clance", Obj_Last_Chance);
		}
	}
}