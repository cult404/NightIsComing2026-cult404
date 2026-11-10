if (!global.warping)
{
    global.warping = true;

    global.destination_door = destination_door_id;

    global.room_destination = room_destination;
	show_debug_message("TELEPORTING");
    show_debug_message("Destination: " + string(global.destination_door));

    obj_fadeout.fadeTime = true;

    room_goto(room_destination);
}


//this basically allows you to warp bectween rooms - making it easy to debug.
