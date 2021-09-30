
 // falling
if (yspeed < terminal_velocity) {
	yspeed += gravity_value;
}

 // bouncing
if (place_meeting(x, y+yspeed, obj_collider)) {
	yspeed = -bounce;
	bounce *= bounce_decay;
}

y += yspeed

 // animation
counter += 0.07;      
value = sin(counter); 

_angle = value * 10;