if (global.chase_active)
{
	global.chase_active = false;
	global.chase_lost = true;
	
	room_goto(rm_menu);
	audio_stop_all();
}