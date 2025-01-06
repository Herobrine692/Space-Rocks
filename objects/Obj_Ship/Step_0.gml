if(speed <= 5){
	if (keyboard_check(vk_up)){
		motion_add(image_angle, 0.06);
	}
	if (keyboard_check(vk_down)){
		motion_add(image_angle, -0.06);
	}
}

if (keyboard_check(vk_left)){
	image_angle += 5;
}
if (keyboard_check(vk_right)){
	image_angle -= 5;
}
if(hspeed >= 0.01){
		hspeed -= 0.01;
}
if(hspeed <= -0.01){
		hspeed += 0.01;
}
if(vspeed >= 0.01){
		vspeed -= 0.01;
}
if(vspeed <= -0.01){
		vspeed += 0.01;
}
if (keyboard_check_pressed(vk_space)){
	var inst = instance_create_layer(x, y, "Player_Instances", Obj_Bullet);
	inst.direction = image_angle;
}
player_speed = speed;
player_direction = direction;
player_angle = image_angle;
if(alarm_get(0) != 0){
	if(place_meeting(x, y, Obj_Small_Rock)){
		health -= 1;
		instance_create_layer(x, y, "Player_Instances", Obj_Ship_Hit);
		with(Obj_Ship_Hit){
			speed = player_speed;
			direction = player_direction;
			image_angle = player_angle;
			sprite_set_speed(Spr_Ship_Hit, 3, spritespeed_framespersecond);
		}
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
			if(lives <= 0){
				instance_create_layer(490, 490, "Last_Clance", Obj_Last_Chance);
				alarm_set(1, 240);
			}
		}
	}else if(place_meeting(x, y, Obj_Medium_Rock)){
		health -= 1;
		instance_create_layer(x, y, "Player_Instances", Obj_Ship_Hit);
		with(Obj_Ship_Hit){
			speed = player_speed;
			direction = player_direction;
			image_angle = player_angle;
			sprite_set_speed(Spr_Ship_Hit, 3, spritespeed_framespersecond);
		}
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
			if(lives <= 0){
				instance_create_layer(490, 490, "Last_Clance", Obj_Last_Chance);
				alarm_set(1, 240);
			}
		}
	}else if(place_meeting(x, y, Obj_Big_Rock)){
		health -= 1;
		instance_create_layer(x, y, "Player_Instances", Obj_Ship_Hit);
		with(Obj_Ship_Hit){
			speed = player_speed;
			direction = player_direction;
			image_angle = player_angle;
			sprite_set_speed(Spr_Ship_Hit, 3, spritespeed_framespersecond);
		}
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
			sprite_set_speed(Spr_Ship_Low_Health, 3, spritespeed_framespersecond)
		}else if(health <=0){
			repeat(10){
				instance_create_layer(x, y, "Player_Instances", Obj_Debris);
			}
			instance_destroy();
			lives -= 1;
			if(lives <= 0){
				instance_create_layer(490, 490, "Last_Clance", Obj_Last_Chance);
				alarm_set(1, 240);
			}
		}
	}
}
move_wrap(x, y, sprite_width/2);