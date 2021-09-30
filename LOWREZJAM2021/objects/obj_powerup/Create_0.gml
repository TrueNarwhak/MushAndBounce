
 // visual 
randomize();

image_speed = 0;

if (_health == 3) {
	image_index = irandom_range(0, 3);
} else {
	image_index = irandom_range(0, 4);
}
counter = 0;
_angle = 0;

 // physics 
gravity_value = 0.09;

xspeed = 0;
yspeed = 0;

jump_speed = 0.8;

move_speed = 0.6;
terminal_velocity = 4;

bounce = 0.8;
bounce_decay = bounce/3;

alarm[0] = room_speed - 35; // Twinkle

 // starting boost
yspeed = -jump_speed