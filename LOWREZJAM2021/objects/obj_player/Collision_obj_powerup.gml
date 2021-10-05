

audio_play_sound(snd_powerup_pickup, 2, false);

with (other) {
	var powerup_type = image_index;
	instance_destroy();
}

flash_alpha = 1;

_xscale = 1.75;
_yscale = 0.25;

switch(powerup_type) {
	case power_states.water:
		powered = true;
		sprite_index = spr_player_water;
		
		can_create_water = true;
		alarm[0] = powerup_decay_speed;
		
	break;
	
	case power_states.thunder:
		powered = true;
		sprite_index = spr_player_thunder;
		
		can_electrocute = true;
		alarm[0] = powerup_decay_speed;
	break;
	
	case power_states.leaf:
		powered = true;
		sprite_index = spr_player_leaf;
		
		instance_create_layer(x, y, "Entities", obj_protector_leaves);
		alarm[0] = powerup_decay_speed;
	break;
	
	case power_states.fire:
		powered = true;
		sprite_index = spr_player_fire;
		
		can_ignite_ball = true;
		alarm[0] = powerup_decay_speed;
	break;
	
	case power_states.health_pickup:
		_health += 1;
	break;
}