if place_meeting(x, y, obj_player1) and keyboard_check_pressed(vk_enter) and isInteracted = false
{
	isInteracted = true;
	global.murderfade = 1;
	audio_stop_all();
	audio_play_sound(soundVar, 1, false);
	

}
if isInteracted = true {
	
	
	loop += 1;
	clamp(loop, 0, loopDuration);
}
if loop = loopDuration {
	room_goto(rm_kidbedroom);
	
} 