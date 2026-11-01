//input!!!! for left and right

rightMove = keyboard_check(ord("D")); //checks if D
leftMove = keyboard_check(ord("A")); //checks if A
upMove = keyboard_check(ord("W")); //checks if W
downMove = keyboard_check(ord("S")); //checks if S

//checks if moving at all
if rightMove = true {walKing = true;} else {walKing = false;}
if leftMove = true {walKing = true;} else {walKing = false;}
if upMove = true {walKing = true;} else {walKing = false;}
if downMove = true {walKing = true;} else {walKing = false;}


moveDir = rightMove - leftMove; //this funni maths will move us

xSpeed = moveDir * moveSpeed;
// x collison
var _subPixel = .5;
if place_meeting(x + xSpeed, y, obj_wall)
{
	var _pixelCheck = _subPixel * sign(xSpeed);
	while !place_meeting( x + _pixelCheck, y, obj_wall)
	{
		x += _pixelCheck;
	}
	xSpeed = 0;
}

x += xSpeed;

//up and down movement

moveDir = downMove - upMove; //this funni maths will move us up and down

ySpeed = moveDir * moveSpeed;
// y collison
var _subPixel = .5
if place_meeting(x, y + ySpeed, obj_vertwall)
{
	var _pixelCheck = _subPixel * sign(ySpeed);
	while !place_meeting( x, y + _pixelCheck, obj_vertwall)
	{
		y += _pixelCheck;
	}
	ySpeed = 0;
}

y += ySpeed;


//shift speed loop and system

shift = keyboard_check(ord("X"));
if shift = true {
	moveSpeed = 3;
} else {
moveSpeed = 1;
}






// sprite movement system
if rightMove = true {
	previousDir = 1;
}
if leftMove = true {
	previousDir = -1;
}


if walKing = false {input = 0}

input = 0; //walking direction calculator stuff
if rightMove = true {
	input = 1}
if leftMove = true {
	input = -1}

//up and down direction calculator
if downMove = true {
	input = previousDir;
}
if upMove = true { //IT ALL WORKS IM SO HAPPY RIGHT NOW EVERYTHING IS GREAT AND LIFE IS GOOD
	input = previousDir;
}
	
	
if input != lastInput //sprite animations stuff
{
	if input != 0{
		if input == 1 {//we walking right
		sprite_index = spr_josephnightRmove; //walk
		facingDir = 1
			} else {
			if input == -1 {//we walking left
			sprite_index = spr_josephnightLmove; //walk
			facingDir = -1;
			
			}
		}
	} else if facingDir = 1 {
		sprite_index = spr_josephnightRidle;//idle
	} else if facingDir = -1 {
		sprite_index = spr_josephnightLidle;//idle
	}
lastInput = input;
}
















//ancient evil code i keep to laugh at


//if keyboard_check(ord("D")) {
//	input += 1;
//} else if keyboard_check(ord("A")) {
//	input -= 1;
//}

//if currentInput != input {
//if input == 1 {sprite_index = spr_josephnightRmove}
//currentInput = input;
//if input == -1 {sprite_index = spr_josephnightLmove}
//currentInput = input;
//}

//utilising the flip flop for idle pos

//if walkingLeft == true {
	
	//sprite_index = spr_josephnightLidle;
//} else {
	
//	sprite_index = spr_josephnightRidle;
	
//}

//walking flip flop

//if keyboard_check_pressed(ord("A")) {
	//walkingLeft = true;
	//walkingRight = false;
//}
//if keyboard_check_pressed(ord("D")) {
//	walkingLeft = false;
//	walkingRight = true;
//}










// footstep sounds
if keyboard_check(ord("A")) || keyboard_check(ord("D")) || keyboard_check(ord("S")) || keyboard_check(ord("W"))
{ if !audio_is_playing(snd_footstep) { audio_play_sound(snd_footstep, 5, true)}} else {audio_stop_sound(snd_footstep);}



	
	
	






