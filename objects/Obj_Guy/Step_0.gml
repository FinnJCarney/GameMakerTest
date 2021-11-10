/// @Movement
depth = -y;
movespeed = 2;

//Starting By Checking Inputs
if(keyboard_check(ord("S")))
{
	inputy = 1;	
	sprite_index = Spr_Guy_Down;
}

else if(keyboard_check(ord("W")))
{
	inputy = -1;
	sprite_index = Spr_Guy_Down;
}
else {inputy = 0}

if(keyboard_check(ord("D")))
{
	inputx = 1;	
	sprite_index = Spr_Guy_Right;
	image_xscale = 1;
}

else if(keyboard_check(ord("A")))
{
	inputx = -1;	
	sprite_index = Spr_Guy_Right
	image_xscale = -1;
}
else {inputx = 0}


if(inputx = 0 && inputy = 0)
{
	if(sprite_index = Spr_Guy_Right)
	{
		sprite_index = Spr_Guy_Right_Idle;
	}
}

//Check Character Collision & Move
//For X Val
if(CheckCollision(x + (movespeed * inputx), y, Obj_Block))
{
	x += inputx * movespeed;
}

//For Y Val
if(CheckCollision(x,y + (movespeed * inputy), Obj_Block))
{
	y += inputy * movespeed;
}