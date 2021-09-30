/// @desc Zoom in / Move up

if (!show_title_as_header) {
	image_xscale += zoom;
	image_yscale += zoom;
} else {
	act_as_header = true;
	y = lerp(y, header_location, header_speed);
}
//image_xscale = lerp(image_xscale, 61, 0.004);
//image_yscale = lerp(image_yscale, 61, 0.004);

alarm[0] = 1;