
// // menu
//enum menu_element_type {
//	script_runner,
//	page_transfer
//}

//ds_menu_main = create_menu_page(
//	["PLAY",          menu_element_type.script_runner,   enter_game],
//	["INSTRUCTIONS",  menu_element_type.page_transfer,   instructions_popup],
//	["CREDITS",       menu_element_type.page_transfer,   credits_popup],
//	["QUIT",          menu_element_type.script_runner,   exit_game],
//);

menu_main = [
	"PLAY",
	"INSTRUCTIONS",
	"CREDITS",
	"QUIT"
];

current_selection = 0;
c = [c_white, c_white, c_white, c_white];

text_scale = 0.3;
seperation = 10;

should_draw_instructions = false;
should_draw_credits = false;

popup_destination_x = room_width/2;
popup_destination_y = room_height/2;
popup_movespeed = 0.09;

popup_x = 48;
popup_y = 80;