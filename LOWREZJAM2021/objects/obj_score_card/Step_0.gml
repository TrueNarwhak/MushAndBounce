
key_accept = keyboard_check_pressed(vk_r) || keyboard_check_pressed(vk_z) || keyboard_check_pressed(vk_x) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_k) || keyboard_check_pressed(vk_l); 

 // falling
if (yspeed < terminal_velocity) {
	yspeed += gravity_value;
}

 // bouncing
if (place_meeting(x, y+yspeed, obj_collider)) {
	yspeed = -bounce;
	bounce *= bounce_decay;
}

 // assignment
y += yspeed;

 // restart
if (key_accept && instance_number(obj_player) == 0) {
	room_restart();
}

//var o = obj_ball || obj_player || obj_beam