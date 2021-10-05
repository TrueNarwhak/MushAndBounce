_speed  = 0.4;
sound_player = false;

if (x - obj_player.x < 0) { // if on left
	xspeed = -_speed;
	sound_player = true;
} else {
	xspeed = _speed;
	sound_player = false;
}
yspeed  = -_speed;


spin_speed = 8;

_angle = 0;
image_alpha = 0.6;

alarm[0] = room_speed+120; // Destroy