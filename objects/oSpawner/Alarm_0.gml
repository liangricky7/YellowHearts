/// @description Insert description here
// You can write your code in this editor


var inst = instance_create_layer(x, y, "Instances", oSlime);
with(inst){
	hp = 1;
}
alarm[0] = random_range(100, 500);