/// @description Powerups wear off

 // general 
sprite_index = spr_player;

powered = false;

 // specific 
can_create_water = false;
if (instance_exists(obj_protector_leaves)) {
	instance_destroy(obj_protector_leaves)
}
can_ignite_ball = false;
can_electrocute = false;