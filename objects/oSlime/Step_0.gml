/// @description Insert description here
// You can write your code in this editor


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


move_towards_point(oPlayer.x, oPlayer.y, tsp);
