//this is my camera
var cam = view_camera[0]; //gets camera
var cam_w = camera_get_view_width(cam); //get camera width
var cam_h = camera_get_view_height(cam); //get camera heightz
//get our camera position
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);

//dead zone, hjopw large is out no movmeent box boprder thing
var box_w = 1; //change these values for a bigger box\
var box_h = 50;

var player_x = obj_player1.x; //grab our players position relative to the player
var player_y = obj_player1.y;

//mopve the camera target only when the player leaves the box

if (player_x < cam_x + (cam_w - box_w / 2))//left boundrasryu
{
	cam_x = player_x - (cam_w - box_w) / 2;
}

if (player_x > cam_x + (cam_w + box_w / 2))//rioght borderey
{
	cam_x = player_x - (cam_w + box_w)  /2;
}
//dead zone y
if (player_y < cam_y + (cam_h - box_h / 1))//left boundrasryu
{
	cam_y = player_y - (cam_h - box_h) / 1;
}

if (player_y > cam_y + (cam_h + box_h / 1))//right boundrasryu
{
	cam_y = player_y - (cam_h + box_h) / 1;
}

cam_x = clamp(cam_x, 0, room_width - cam_w);
cam_y = clamp(cam_y, 0, room_height - cam_h);

var smooth = 0.12;
var current_x = camera_get_view_x(cam);
var current_y = camera_get_view_y(cam);

//set our current x and y
current_x = lerp(current_x, cam_x, smooth)
current_y = lerp(current_y, cam_y, smooth)

//move the camera

camera_set_view_pos(cam, current_x, current_y);