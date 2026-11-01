if (!global.chase_active)
{
	global.chase_active = true;
	with (obj_Enemychaser)
	{
		Chaseplayer = true;
		show_debug_message("chase triggered");
	}
}
show_debug_message("eloo");