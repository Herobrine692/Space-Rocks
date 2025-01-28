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
	var inst = instance_create_layer(x, y, "Player_Instances", obj_bullet);
	inst.direction = image_angle;
	audio_play_sound(snd_shoot, 10, false, 1, 0.42)
}
move_wrap(x, y, sprite_width/2);
move_wrap(-x, -y, sprite_width/2);