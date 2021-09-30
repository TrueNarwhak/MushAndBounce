
if (instance_exists(obj_player)) {

	player_x = obj_player.x;
	player_y = obj_player.y;

	x = lerp(x, player_x, _speed);
	y = ypos;
	
	if (obj_player.key_right) { 
		_angle = lerp(_angle, -rotate_amount, angle_speed);
	} else if (obj_player.key_left) {
		_angle = lerp(_angle, rotate_amount, angle_speed);
	} else {
		_angle = lerp(_angle, 0, angle_speed);	
	}
} else {
	instance_destroy();
}

