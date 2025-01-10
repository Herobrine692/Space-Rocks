image_angle += 1;
if(alarm_get(0) == 0){
	instance_create_layer(490, 490, "Player_Instances", obj_ship)
}
move_wrap(true, true, sprite_width/2);