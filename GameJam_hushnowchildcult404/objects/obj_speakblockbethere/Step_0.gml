if (place_meeting(x, y, obj_player1) && !speaking && !global.spokenbethere)
{
    speaking = true;
    global.spokenbethere = true;

    with (instance_create_depth(0, 0, -9999, obj_textbox))
    {
        scr_text("Ghostly Voice: Put the child to sleep...");
        scr_text("Ghostly Voice: Put the child to sleep Joseph");
        scr_text("Ghostly Voice: this is your TASK!");
    }

    // DELETE WALLS
    with (obj_wall_1)
    {
        instance_destroy();
    }

    with (obj_speakblockgoback)
    {
        instance_destroy();
    }

    show_debug_message("BETHERE TRIGGERED - WALLS DELETED");

    instance_destroy();
}