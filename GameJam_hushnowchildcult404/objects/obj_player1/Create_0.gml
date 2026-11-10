//this is player data like speed and movement
//This is for the door warping 
if (!variable_global_exists("warping"))
{
    global.warping = false;
}

if (!variable_global_exists("destination_door"))
{
    global.destination_door = "";
}

//Don't delete this section handles the player not getting blocked

if (!variable_global_exists("spokendocks"))
{
    global.spokendocks = false;
}
//moving

moveDir = 0;

//speed

moveSpeed = 1; //how fast our guy goes
xSpeed = 0;
ySpeed = 0;
//out up and down and left and right
walKing = false;
facingLeft = false;
facingRight = false;
facingDir = 0;

spriteLoop = 60; // stupid fricking loop to get around problems
spriteFrame2 = false;

lastInput = 0;
input = 0;

previousDir = 0;

persistent = true;

