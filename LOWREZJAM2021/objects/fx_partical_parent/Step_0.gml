


image_angle = lerp(image_angle, image_angle+7, 0.2);

speed = lerp(speed, 0, 0.0001);


image_xscale -= speed/4;
image_yscale -= speed/4;


if (image_yscale < 0) {
	instance_destroy();
}

