
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