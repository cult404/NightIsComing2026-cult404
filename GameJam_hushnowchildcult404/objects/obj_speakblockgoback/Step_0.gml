if place_meeting(x , y , obj_player1) && speaking == false && global.spokendocks == false
{
speaking = true;
	with (instance_create_depth(0, 0, -9999, obj_textbox))
	{
	scr_text("Joseph Night: Something is calling me to water..");
	}
}
if !place_meeting(x , y , obj_player1) { speaking = false;}