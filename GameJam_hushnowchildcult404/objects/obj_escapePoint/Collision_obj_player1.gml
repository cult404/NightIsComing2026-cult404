if (global.chase_active && !global.chase_lost) 
{
global.chase_active = false;
global.chase_won = true;
audio_stop_all();
obj_Enemychaser.visible = false;
}