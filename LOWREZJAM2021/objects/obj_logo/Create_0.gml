globalvar should_debug_notification;

show_credits = false;

gravity_value = 0.09;

yspeed = 0;

jump_speed = 1.4;

move_speed = 0;
move_speed = 0.6;
terminal_velocity = 10;

bounce = 1.4;
bounce_decay = 0.35;

zoom = 0.05;
gradual_zoom = 0.0004;
should_draw = false;
should_debug_notification = false;
text_alpha = 0;
text_alpha_faded = 0.5;
rect_alpha = 0;

alarm[0] = room_speed+120; // Zoom in
alarm[1] = room_speed+20; // Draw GUI
alarm[2] = room_speed+120*2; // next room