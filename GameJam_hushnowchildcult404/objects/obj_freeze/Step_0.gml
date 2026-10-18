//if our button is pressed, then increase alpha until done
if global.freeze == true 
{
	
	image_alpha += 0.005;
	duration += 0.005;
	clamp(duration, 0, 1);
	
}
if  global.freeze == true && sndPlayed == false
{
	audio_play_sound(snd_blizzard, 10, false);
	sndPlayed = true
}
if  duration == 1
{
	game_end();
}