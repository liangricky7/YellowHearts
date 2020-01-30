/// @description Insert description here
// You can write your code in this editor

draw_set_font(fMenu);

draw_set_color(c_white);

draw_text(display_get_gui_width()/2, display_get_gui_height()/2 - 100, printf("You have Died! Score: %s", inst_Player.points));
draw_text(display_get_gui_width()/2, display_get_gui_height()/2 + 300, "Press R to Restart");




