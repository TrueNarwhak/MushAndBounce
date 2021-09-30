_speed  = 0.4;

if (x - obj_player.x < 0) { // if on left
	xspeed = -_speed;
} else {
	xspeed = _speed;
}
yspeed  = -_speed;


spin_speed = 8;

_angle = 0;
image_alpha = 0.6;

alarm[0] = room_speed+120; // Destroy