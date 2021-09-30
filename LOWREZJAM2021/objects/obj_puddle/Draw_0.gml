
if (place_meeting(x,y+sprite_height, obj_collider) && !place_meeting(x,y, obj_puddle)) {
	draw_self();	
} else {
	instance_destroy();
}