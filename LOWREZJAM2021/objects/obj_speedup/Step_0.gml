
 // animation
if (!should_leave) {
	_y = lerp(_y, y_destination, move_speed);
	_angle = lerp(_angle, 0, spin_speed);
} else {
	_y = lerp(_y, -30, move_speed);
	_angle = lerp(_angle, -360, spin_speed);	
}

if (_angle >= -2 and can_pulse) {
	_xscale = 0.8;	
	_yscale = 0.8;	
	can_pulse = false;
	
	alarm[0] = room_speed-7;
}

_xscale = lerp(_xscale, 0.4, 0.2);
_yscale = lerp(_yscale, 0.4, 0.2);

 // destroy when left
if (_y < -10) {
	instance_destroy();	
}