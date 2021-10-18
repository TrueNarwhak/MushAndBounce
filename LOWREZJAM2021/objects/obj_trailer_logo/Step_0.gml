
 // falling
if (!act_as_header) { 
	if (yspeed < terminal_velocity) {
		yspeed += gravity_value;
	}
}

 // bouncing
if (place_meeting(x, y+yspeed, obj_collider)) {
	yspeed = -bounce;
	bounce *= bounce_decay;
	
	 // play sound
	if (bounce > 0.06) {
		audio_play_sound(snd_land, 1, false);
	}
}

 // assignment
y += yspeed;

 // fading text
if (should_draw) {
	text_alpha = lerp(text_alpha, 1, 0.05);
	rect_alpha = lerp(rect_alpha, 1, 0.06);
}

 // debug
if (keyboard_check_pressed(vk_f)) {
	should_debug_notification ^= true;
}

if (keyboard_check_pressed(vk_right)) {
	room_goto_next();
}

