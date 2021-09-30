/// @description Create puddle

if (can_create_water) {
	instance_create_layer(x,y, "Entities", obj_puddle);
}                                                 

alarm[1] = room_speed-40;

