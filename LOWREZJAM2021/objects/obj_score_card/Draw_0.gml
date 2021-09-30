draw_self()

 // score
draw_set_font(fnt_FFFFOWRWARD);
draw_set_halign(fa_center);
draw_set_color(c_white);
var highscore_size = 0.02;

draw_text_transformed(x+1, y-6, "HIGHSCORE: " + string(_highscore), text_xscale+highscore_size, text_yscale+highscore_size, 0);
draw_text_transformed(x+1, y-2.5, "SCORE: " + string(_score), text_xscale, text_yscale, 0);
draw_text_transformed(x+1, y+1, "CLEARED: " + string(lines_cleared), text_xscale, text_yscale, 0);
draw_text_transformed(x+1, y+4.5, "SPEED: 1." + string(current_speed), text_xscale, text_yscale, 0);