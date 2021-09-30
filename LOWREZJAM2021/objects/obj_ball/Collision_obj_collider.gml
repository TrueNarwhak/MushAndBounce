

if (!instance_exists(obj_power_leaves)) {
	if (instance_exists(obj_player)) {
		if (x - obj_player.x < 0) { // if stuck on left side 
			x += push_speed;
		} else {
			x -= push_speed;
		}
	}
}