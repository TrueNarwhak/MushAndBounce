function draw_hitbox() {
	if (debug) {
		draw_set_color(c_red);
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);	
	}
}