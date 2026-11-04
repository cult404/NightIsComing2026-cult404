if place_meeting(x , y , obj_player1) && speaking == false && DoorCount != 3
{
speaking = true;
	with (instance_create_depth(0, 0, -9999, obj_textbox))
	{
	scr_text("Joseph Night: Hmmm the door is locked.");
	
	
	}
	
DoorCount += 1;
clamp(DoorCount, 0, 3)
}

if place_meeting(x , y , obj_player1) && speaking == false && DoorCount == 3
{
speaking = true;
	with (instance_create_depth(0, 0, -9999, obj_textbox))
	{
	scr_text("Joseph Night: OPEN NA NOOOR.");
	
	
	}
	
}