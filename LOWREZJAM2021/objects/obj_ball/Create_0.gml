
 // visual 
image_speed = 0;
image_index = 0;
_alpha      = 0;

 // physics
serve = true; 

_sprite = spr_ball;
_xscale = 1;
_yscale = 1;
_angle  = 0;

_speed     = 0.6;
up_speed   = _speed*1.5;

spin_speed = 1.8;

xspeed     = _speed;
yspeed     = _speed;

push_speed = 1;
fade_speed = 0.04;

alarm[0] = room_speed - 10; // Sparks
alarm[2] = room_speed*7;

 // powerups
on_fire = false;
hb_type = obj_ball_hb;

can_create_zap = true;
electric_time = room_speed-40;