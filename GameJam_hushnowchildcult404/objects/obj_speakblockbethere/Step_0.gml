if place_meeting(x , y , obj_player1) && speaking == false && global.spokendocks == false
{
speaking = true;
	with (instance_create_depth(0, 0, -9999, obj_textbox))
	{
	scr_text("Ghostly Voice: Put the child to sleep...");
	scr_text("Ghostly Voice: Put the child to sleep Joseph");
	scr_text("Ghostly Voice: this is your TASK!");
	
	}

global.spokendocks = true;


}
if !place_meeting(x , y , obj_player1) { speaking = false;}

if global.spokendocks == true {instance_destroy(obj_wall_1);}