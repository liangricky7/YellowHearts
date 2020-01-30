/// @description Insert description here
// You can write your code in this editor

if(mode != MODE.OFF){
	if(percent == 1) || (percent == 0){
		switch(mode){
			case MODE.NEXT:{
				mode = MODE.OFF;
				room_goto_next();
				break;
			}case MODE.GOTO:{
				mode = MODE.OFF;
				room_goto(target);
				break;
			}case MODE.RESTART:{
				game_restart();
				break;
			}
		}
	}
}
