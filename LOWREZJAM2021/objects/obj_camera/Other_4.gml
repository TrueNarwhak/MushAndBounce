

 // camera
camera_x = 0;
camera_y = 0;
target = obj_player;

camera_width  = room_width;
camera_height = room_height;

//camera_width  = 64;
//camera_height = 64;

globalvar camera_scale;
camera_scale  = 14;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], camera_width, camera_height);

 // display
display_width  =  camera_width *camera_scale;
display_height =  camera_height*camera_scale;

window_set_size(display_width, display_height);
surface_resize(application_surface, display_width, display_height);

 // GUI
display_set_gui_size(camera_width, camera_height);

alarm[0] = 1;