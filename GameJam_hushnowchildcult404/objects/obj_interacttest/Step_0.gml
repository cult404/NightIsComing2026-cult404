if place_meeting(x, y, obj_player1) and keyboard_check_pressed(vk_enter) and isInteracted = false
{
	isInteracted = true;
	audio_play_sound(soundVar, 1, false);
	
	
}

if !place_meeting(x, y, obj_player1) 
{
	
	isInteracted = false;
	
}