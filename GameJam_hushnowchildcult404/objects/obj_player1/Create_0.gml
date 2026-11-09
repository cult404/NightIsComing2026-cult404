//this is player data like speed and movement
//door stuff

if (!variable_global_exists("warping"))
{
    global.warping = false;
    global.destination_door = "";
}

//per stuff

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

