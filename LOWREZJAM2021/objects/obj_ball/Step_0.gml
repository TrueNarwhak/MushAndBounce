


 // physics
// colliding with beams and terrain 
if (place_meeting(x+xspeed, y, prnt_ball_collider) || place_meeting(x-xspeed, y, prnt_ball_collider)) {
	
	xspeed = -xspeed;
	instance_create_layer(x, y, "Entities", hb_type);

	
	serve = false;
}
 
if (place_meeting(x, y+yspeed, prnt_ball_collider) || place_meeting(x, y+yspeed, prnt_ball_collider)) {
	
	yspeed = -yspeed;
	instance_create_layer(x, y, "Entities", hb_type);
	
	serve = false;
}

// colliding with player
if (place_meeting(x+xspeed, y, obj_player) || place_meeting(x-xspeed, y, obj_player)) {
	if (obj_player.can_ignite_ball) {
		on_fire = true;
	}
	
	if (obj_player.can_electrocute and can_create_zap) {
		alarm[1] = electric_time;
		instance_create_layer(obj_player.x-sprite_width/2, obj_player.y-sprite_height, "FX", obj_zap);
		instance_create_layer(obj_player.x+sprite_width/2, obj_player.y-sprite_height, "FX", obj_zap);
		can_create_zap = false;
	}
	
	xspeed = -_speed;
	instance_create_layer(x, y, "Entities", hb_type);
	
	serve = false;
	
	 // very good and totally efficant 
	if (yspeed == -up_speed) {
		xspeed = -_speed;
		yspeed = -_speed;
	}
}

if (place_meeting(x, y+yspeed, obj_player) || place_meeting(x, y-yspeed, obj_player)) {
	if (obj_player.can_ignite_ball) {
		on_fire = true;
	}
	
	if (obj_player.can_electrocute and can_create_zap) {
		alarm[1] = electric_time;
		instance_create_layer(obj_player.x-sprite_width/2, obj_player.y-sprite_height, "FX", obj_zap);
		instance_create_layer(obj_player.x+sprite_width/2, obj_player.y-sprite_height, "FX", obj_zap);
		can_create_zap = false;
	}
	
	yspeed = -_speed;
	instance_create_layer(x, y, "Entities", hb_type);
	
	serve = false;
	
	 // very good and totally efficant 
	if (yspeed == -up_speed) {
		xspeed = -_speed;
		yspeed = -_speed;
	}
}

if (place_meeting(x+xspeed, y, obj_protector_leaves) || place_meeting(x-xspeed, y, obj_protector_leaves) ||
	place_meeting(x, y+yspeed, obj_protector_leaves) || place_meeting(x, y-yspeed, obj_protector_leaves)) {
	
	xspeed = 0;
	yspeed = -up_speed;
	
	instance_create_layer(x, y, "Entities", hb_type);
	
	_angle = 0;
	
}

 
 // animation
if (xspeed > 0 and yspeed < 0) {
	_angle = -25;
} else if (xspeed < 0 and yspeed > 0) {
	_angle = 25;
}

_alpha = lerp(_alpha, 1, fade_speed);

 // assignment
if (serve) {
	_angle += spin_speed;
}

if (!serve) {
	x += xspeed;
	y += yspeed;
}

 // powerup
if (on_fire) {
	_sprite = spr_ball_flaming;
	hb_type = obj_flaming_ball_hb;
} else if (place_meeting(x,y, obj_power_leaves)) {
	_sprite = spr_ball;
	hb_type = fx_twinkle;	
} else {
	_sprite = spr_ball;
	hb_type = obj_ball_hb;
}