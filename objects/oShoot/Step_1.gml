/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x; 
y = oPlayer.y;

image_angle = point_direction(x, y, mouse_x, mouse_y);

delay--;
recoil = max(0, recoil - 1);

if(keyboard_check((ord("Q"))) && (delay < 0)){
	delay = 45;
	recoil = 4;
	with(instance_create_layer(x, y, "Bullets", oBullet)){
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}	
}

x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);