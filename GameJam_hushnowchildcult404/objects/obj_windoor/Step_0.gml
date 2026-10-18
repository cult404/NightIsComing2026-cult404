if place_meeting(x, y, obj_player1) and keyboard_check_pressed(vk_enter) and isInteracted = false
{
	isInteracted = true;
	audio_play_sound(sound, 1, false);
	obj_fadeout.fadeTime = true;
	if obj_fadeout.fadedIn = true && roomTp = true {room_goto(room_destination)} 
	if obj_fadeout.fadedIn = true && roomTp = !true {room_goto(room_destination)}
}

if !place_meeting(x, y, obj_player1) 
{
	
	isInteracted = false;
	
}
obj_fadeout.fadeTime = true;

