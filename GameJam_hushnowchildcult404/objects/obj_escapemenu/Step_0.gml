if keyboard_check_pressed(vk_escape) //checks if escape is being held
{
room_goto(rm_menu);
audio_stop_all();
}