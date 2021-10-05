should_draw = true;

with (other) {
	if (other.image_alpha <= 1) {
		instance_destroy();	
	}
	
	obj_ball.on_fire = false;
}
