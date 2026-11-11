if (global.spokenbethere)
{
    instance_destroy();
    exit;
}

if (place_meeting(x, y, obj_player1) && !speaking)
{
    speaking = true;

    with (instance_create_depth(0, 0, -9999, obj_textbox))
    {
        scr_text("Joseph Night: Something is stopping me...");
    }

    instance_destroy();
}