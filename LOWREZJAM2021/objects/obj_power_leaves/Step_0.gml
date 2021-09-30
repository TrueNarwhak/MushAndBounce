
if (instance_exists(obj_player)) {

	player_x = obj_player.x;
	player_y = obj_player.y;

	x = player_x + ((rotation_radius * distance) * cos(degtorad(direction)));
	y = player_y + ((rotation_radius * distance) * sin(degtorad(direction)));

	direction += _speed;
	image_angle = direction;

	image_angle = point_direction(x, y, player_x, player_y) - 90;

	if (place_empty(x-5,y, obj_collider) && should_destroy) {
		instance_destroy();
	}

}