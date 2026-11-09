if (global.warping)
{
    var door = noone;

    for (var i = 0; i < instance_number(obj_door); i++)
    {
        var d = instance_find(obj_door, i);

        if (d.door_id == global.destination_door)
        {
            door = d;
            break;
        }
    }

    if (door != noone)
    {
        x = door.x + door.spawn_offset_x;
        y = door.y + door.spawn_offset_y;
    }

    global.warping = false;
}

show_debug_message("arrived in room: " + room_get_name(room));