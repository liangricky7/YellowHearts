/// @description Insert description here
// You can write your code in this editor

if(room == rGame){
	player_control = true;
}

key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

//movement code
if(player_control){
	var movex = key_right - key_left
	var movey = key_down - key_up;

	hsp = movex * tsp;
	vsp = movey * tsp;
}

//collision detection
// vertical
if(place_meeting(x, y + vsp, oWall)){
	while(!place_meeting(x , y+ sign(vsp), oWall)){
		y += sign(vsp);
	}
	vsp = 0;		
}

// horizontal
if(place_meeting(x + hsp, y, oWall)){
	while(!place_meeting(x + sign(hsp), y, oWall)){
		x += sign(hsp);
	}
	hsp = 0;		
}


x += hsp;
y += vsp;