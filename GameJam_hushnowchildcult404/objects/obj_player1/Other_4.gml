if (global.warping)
{
    var _found_door = noone;

    for (var i = 0; i < instance_number(obj_door); i++)
    {
        var _door = instance_find(obj_door, i);

        if (_door.door_id == global.destination_door)
        {
            _found_door = _door;
            break;
        }
    }

    if (_found_door != noone)
    {
        x = _found_door.x + _found_door.spawn_offset_x;
        y = _found_door.y + _found_door.spawn_offset_y;
    }
    else
    {
        show_debug_message("DESTINATION DOOR ??? LOST ");
    }

    global.warping = false;
}

//when you enter a room its going to check for a door, set your position based on X, Y or give you 
//an error message if it cant find the correct dor.