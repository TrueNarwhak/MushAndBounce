// ion think i need to comment any of this it speaks for itself

_speed = 4;

player_x = obj_player.x;
player_y = obj_player.y;

rotation_radius = obj_player.sprite_width;
distance = 2;

seperation = 360 - instance_number(obj_power_leaves) * 120;
direction += seperation;

holding = false;

alarm[0] = 1; // create leaves

should_destroy = false;
