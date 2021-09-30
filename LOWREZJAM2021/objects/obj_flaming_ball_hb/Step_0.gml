image_xscale = lerp(image_xscale, 1, 0.8);
image_yscale = lerp(image_yscale, 1, 0.8);

if (fade_out) {
	image_alpha = lerp(image_alpha, 0, 0.3);
}

if (image_alpha < 0.1) {
	instance_destroy();
}