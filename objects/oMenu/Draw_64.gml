/// @description Insert description here
// You can write your code in this editor
//alignment and setup
draw_set_font(fMenu);
explain = "Controls: WASD To Move, Q to Shoot";

draw_set_color(c_white);
draw_text(display_get_gui_width()/2 + 100, display_get_gui_height()/2 + 300, explain);
draw_text(display_get_gui_width()/2 + 100, display_get_gui_height()/2 - 300, "Yellow Hearts");
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

//works with selecting new game and quit
for(var i = 0; i < menu_items; i++){
	var offset = 30;
	var txt = menu[i];
	if(menu_cursor == i){
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}else{
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i* 2));
	draw_set_color(c_white);


	draw_set_color(col);
	draw_text(xx - offset, yy - offset, txt);

}



