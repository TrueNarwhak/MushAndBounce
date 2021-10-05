
 // menu options
draw_set_font(fnt_FFFFOWRWARD);
draw_set_halign(fa_center);
	
draw_text_transformed_color(48,35, menu_main[0], text_scale,text_scale,0,c[0],c[0],c[0],c[0], text_alpha);
draw_text_transformed_color(48,40, menu_main[1], text_scale,text_scale,0,c[1],c[1],c[1],c[1], text_alpha);
draw_text_transformed_color(48,45, menu_main[2], text_scale,text_scale,0,c[2],c[2],c[2],c[2], text_alpha);
draw_text_transformed_color(48,50, menu_main[3], text_scale,text_scale,0,c[3],c[3],c[3],c[3], text_alpha);

 // popups
if (should_draw_instructions) {
	draw_sprite(spr_score_card, 0, popup_x, popup_y);
	
	popup_x = lerp(popup_x, popup_x, popup_movespeed);
	popup_y = lerp(popup_y, popup_destination_y, popup_movespeed);
	
	draw_set_halign(fa_center);
	draw_set_font(fnt_FFFFOWRWARD);
	
	draw_text_transformed(popup_x, popup_y-6, "Use the arrow keys or \nWSAD to move", 0.18,0.18, 0);
	draw_text_transformed(popup_x, popup_y+0.3, "Try to hit the ball(s) \nand as many powerups \nas you can!", 0.18,0.18, 0);
}

if (should_draw_credits) {
	var second_popup_y = popup_y+23;
	draw_sprite(spr_score_card, 0, popup_x, popup_y);
	draw_sprite(spr_score_card, 0, popup_x, second_popup_y);
	
	popup_x = lerp(popup_x, popup_x, popup_movespeed);
	popup_y = lerp(popup_y, popup_destination_y, popup_movespeed);
	
	draw_set_halign(fa_center);
	draw_set_font(fnt_FFFFOWRWARD);
	
	draw_text_transformed(popup_x, popup_y-6, "DEVELOPER: TRUE NARWHAK", 0.17,0.17, 0);
	draw_text_transformed(popup_x, popup_y-2, "MADE WITH: \nGameMaker Studio 2 by YoYoGames\nPear36 palette by PineTreePizza\nImpact Sounds by Kenny", 0.14,0.14, 0);

	draw_text_transformed(popup_x, second_popup_y-4, "PLAY TESTERS:", 0.2,0.2, 0);
	draw_text_transformed(popup_x, second_popup_y, "Volbo_Dugs, Sabubotto, \nArgonautical, Doctorpus, \nRadical Tourism, Sharkicide", 0.15,0.15, 0);
	
}