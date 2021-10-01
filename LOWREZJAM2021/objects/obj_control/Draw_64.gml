
if (paused) {
	draw_set_font(fnt_FFFFOWRWARD);
	draw_set_halign(fa_center);
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