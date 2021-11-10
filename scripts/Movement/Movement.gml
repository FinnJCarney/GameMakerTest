// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function CheckCollision(xcord, ycord, obj)
{
	if(place_meeting(xcord, ycord, obj))
	{
		return false;
	}
	else
	{
		return true;
	}
}