if (global.spokenbethere == true)
{
    // Delete the blocking wall
    with (obj_speakblockgoback)
    {
        instance_destroy();
    }

    with (obj_wall_1)
    {
        instance_destroy();
    }

    
}