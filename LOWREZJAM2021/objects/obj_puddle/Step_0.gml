
if (!paused) {
	image_speed = 0.02;	
} else {
	image_speed = 0;
}

if (image_index == 3) {
	instance_destroy();
}