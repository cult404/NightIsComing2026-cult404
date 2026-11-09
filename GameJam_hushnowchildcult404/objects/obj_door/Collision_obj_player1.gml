
if (!global.warping)
{
    global.warping = true;
    global.destination_door = destination_door_id;

    room_goto(room_destination);
	show_debug_message("Teleporting to room: " + room_get_name(room_destination));
	
	
}