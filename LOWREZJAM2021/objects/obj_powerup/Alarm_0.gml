
randomize();

alarm[0] = room_speed - 35;

var x_width = choose(image_xscale, -image_xscale);
var y_width = choose(image_yscale, -image_yscale);

instance_create_layer(x+x_width, y+y_width, "FX", fx_twinkle);