
 // falling
if (yspeed < terminal_velocity) {
	yspeed += gravity_value;
}

 // bouncing
if (place_meeting(x, y+yspeed, obj_collider)) {
	yspeed = -bounce;
	bounce *= bounce_decay;
}

 // assignment
y += yspeed;

 // fading text
if (should_draw) {
	text_alpha = lerp(text_alpha, text_alpha_faded, 0.2);
	rect_alpha = lerp(rect_alpha, 1, 0.06);
}

zoom += gradual_zoom;
image_angle = image_xscale-1;

 // debug
if (keyboard_check_pressed(vk_f)) {
	should_debug_notification ^= true;
}

if (keyboard_check_pressed(vk_right)) {
	room_goto_next();
}

