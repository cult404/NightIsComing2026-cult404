if (global.chase_active && Chaseplayer)
{
    // Find the first waypoint if no target exists
    if (target == noone || !instance_exists(target))
    {
        var lowest_order = 999999;
        var first_target = noone;

        with (obj_waypoint)
        {
            if (order < lowest_order)
            {
                lowest_order = order;
                first_target = id;
            }
        }

        target = first_target;

        if (target != noone)
        {
            show_debug_message("Starting at waypoint " + string(target.order));
        }
        else
        {
            show_debug_message("ERROR: No waypoints exist!");
        }
    }

    if (target != noone && instance_exists(target))
    {
        var dist = point_distance(x, y, target.x, target.y);

        if (dist <= move_speed)
        {
            // Arrive at the waypoint
            x = target.x;
            y = target.y;

            var next_order = target.order + 1;
            var next_target = noone;

            // Find the next waypoint
            with (obj_waypoint)
            {
                if (order == next_order)
                {
                    next_target = id;
                }
            }

            if (next_target != noone)
            {
                target = next_target;
                show_debug_message("Next waypoint: " + string(target.order));
            }
            else
            {
                show_debug_message(
                    "No waypoint order " + string(next_order)
                    + ". Returning to waypoint 0."
                );

                // Loop back to waypoint 0
                with (obj_waypoint)
                {
                    if (order == 0)
                    {
                        next_target = id;
                    }
                }

                target = next_target;
            }
        }
        else
        {
            // Move directly toward the target
            var dir = point_direction(x, y, target.x, target.y);
            var step_size = min(move_speed, dist);

            x += lengthdir_x(step_size, dir);
            y += lengthdir_y(step_size, dir);
        }
    }
}

