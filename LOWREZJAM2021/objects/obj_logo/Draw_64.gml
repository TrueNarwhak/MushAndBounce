

 // beta label 
if (should_draw) {
	//draw_set_alpha(rect_alpha);
	//draw_set_color(c_black);
	//draw_rectangle(0,0,101,81, false);
	draw_set_font(fnt_FFFFOWRWARD);
	draw_set_halign(fa_center);
	var c = c_white;
	draw_text_transformed_color(48,68, "By True Narwhak", 0.2,0.2,0,c,c,c,c, text_alpha);
}

if (should_debug_notification) {
	draw_set_font(fnt_FFFFOWRWARD);
	draw_set_halign(fa_center);
	var c = c_white;
	draw_text_transformed_color(48,25, "Debug mode activated!\nPress 'F' again to disable :)", 0.4,0.4,15,c,c,c,c, 1);
}