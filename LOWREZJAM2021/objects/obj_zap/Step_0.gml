
 // physic
if (place_meeting(x+xspeed, y, obj_collider) || place_meeting(x-xspeed, y, obj_collider)) {
	
	xspeed = -xspeed;

}
 
if (place_meeting(x, y+yspeed, obj_collider) || place_meeting(x, y+yspeed, obj_collider)) {

	yspeed = -yspeed;
}

 // assignment
x += xspeed;
y += yspeed;

 // animation
_angle += spin_speed;