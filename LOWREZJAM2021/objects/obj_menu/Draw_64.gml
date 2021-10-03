
 // menu options
draw_set_font(fnt_FFFFOWRWARD);
draw_set_halign(fa_center);

draw_text_transformed_color(48,35, menu_main[0], text_scale,text_scale,0,c[0],c[0],c[0],c[0], 1);
draw_text_transformed_color(48,40, menu_main[1], text_scale,text_scale,0,c[1],c[1],c[1],c[1], 1);
draw_text_transformed_color(48,45, menu_main[2], text_scale,text_scale,0,c[2],c[2],c[2],c[2], 1);
draw_text_transformed_color(48,50, menu_main[3], text_scale,text_scale,0,c[3],c[3],c[3],c[3], 1);

 // popups
if (should_draw_instructions) {
	draw_sprite(spr_score_card, 0, popup_x, popup_y);
	
	popup_x = lerp(popup_x, popup_x, popup_movespeed);
	popup_y = lerp(popup_y, popup_destination_y, popup_movespeed);
	
	draw_set_halign(fa_center);
	draw_set_font(fnt_FFFFOWRWARD);
	
	draw_text_transformed(popup_x, popup_y, "BITCH\nPRESS ESC TO EXIT", text_scale,text_scale, 0);
}

if (should_draw_credits) {
	draw_sprite(spr_score_card, 0, popup_x, popup_y);
	
	popup_x = lerp(popup_x, popup_x, popup_movespeed);
	popup_y = lerp(popup_y, popup_destination_y, popup_movespeed);
	
	draw_set_halign(fa_center);
	draw_set_font(fnt_FFFFOWRWARD);
	
	draw_text_transformed(popup_x, popup_y-6, "DEVELOPER: TRUE NARWHAK", 0.17,0.17, 0);
	draw_text_transformed(popup_x, popup_y-3, "MADE WITH: \nGameMaker Studio 2 by YoYoGames\nPear36 palette by PineTreePizza", 0.14,0.14, 0);
	draw_text_transformed(popup_x, popup_y+4, "PLAY TESTERS:", 0.14,0.14, 0);
	draw_text_transformed(popup_x, popup_y+6, "Volbo_Dugs, Sabubotto, Argonautical, \nDoctorpus, Radical Tourism", 0.1,0.1, 0);
}