
// follow target

if(instance_exists(obj_player)) {
	camera_x = target.x - camera_width/2;
	camera_y = target.y - camera_height/2;

	camera_x = clamp(camera_x, 0, room_width-camera_width);
	camera_y = clamp(camera_y, 0, room_height-camera_height);
}

camera_set_view_pos(view_camera[0], camera_x, camera_y);