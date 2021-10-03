
if (paused) {
	draw_set_alpha(0.4);
	var c = c_black;
	draw_rectangle_color(0,0,room_width,room_height,c,c,c,c,false);
	
	
	draw_set_font(fnt_FFFFOWRWARD);
	draw_set_halign(fa_center);
	draw_set_alpha(1);
	var c = c_white;
	
	draw_text_transformed_color(
		pause_text_location_x, 
		pause_text_location_y,
		"PAUSED",
		0.5,
		0.5,
		0,
		c,c,c,c,
		1
	);
}