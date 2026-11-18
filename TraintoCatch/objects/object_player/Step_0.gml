_right = keyboard_check(ord("D"));
_left = keyboard_check(ord("A"));
_jumpKeyPressed = keyboard_check(vk_space);

xSpeed = (_right - _left) * moveSpeed;
ySpeed += grav;


if (_jumpKeyPressed && place_meeting (x, y + 1, o_movingPlatform))
{
	ySpeed = jumpSpeed;
}

if (place_meeting(x + xSpeed, y, o_movingPlatform))
{
	var _xpixelCheck = sign(xSpeed);
	
	while (!place_meeting (x + _xpixelCheck, y, o_movingPlatform))
	{
		x += _xpixelCheck;
	}
	
	xSpeed = 0;
}

if (place_meeting(x + xSpeed, y + ySpeed, o_movingPlatform))
{
	var _ypixelCheck = sign(ySpeed);
	
	while (!place_meeting(x + xSpeed, y + _ypixelCheck, o_movingPlatform))
	{
		y += _ypixelCheck;
	}
	
	ySpeed = 0;
}

x += xSpeed;
y += ySpeed;

/* =========================================
		AIR DASH
============================================  */
// Start dash
if (keyboard_check_pressed(vk_lshift) && !is_grounded && can_air_dash)
{
	is_dashing = true;
	can_air_dash = false;
	
	dash_timer = dash_duration;
	
	// Reset trail timer
	trail_spawn_timer = 0;
	
	// Cancel vertical movement
	vspeed = 0;
}

// Handle active dashing
if (is_dashing)
{
	dash_timer--;
	
	// Dash horizontally
	hspeed = dash_speed;
	
	// Disable gravity during dash
	gravity = 0;
	
	// End dash
	if (dash_timer <= 0)
	{
		is_dashing = false;
	}
}
else
{
	// Normal horizontal movement
	hspeed = speed;
	
	// Apply gravity
	vspeed += gravity;
}

if (place_meeting (x + hspeed, y, o_movingPlatform))
{
	while (!place_meeting (x + sign(hspeed), y, o_movingPlatform))
	{
		x += sign(hspeed);
	}
	
	hspeed = 0;
	is_dashing = false;
}

x += hspeed;

/* ==========================================
		DASH TRAIL SPAWNING
============================================= */
if(is_dashing)
{
	trail_spawn_timer--;
	if(trail_spawn_timer <= 0)
	{
		var ghost = instance_create_layer(x - 15, y, layer, o_playerDashTrail);
	
	ghost.sprite_index = sprite_index;
	ghost.image_index = image_index;
	ghost.image_xscale = image_xscale;
	ghost.image_yscale = image_yscale;
	ghost.image_angle = image_angle;
	
	ghost.image_alpha = trail_alpha;
	ghost.image_blend = c_aqua;
	ghost.fade_speed = trail_fade_speed;
	
	ghost.depth = depth + 1;
	trail_spawn_timer = trail_spawn_rate;
	}
}

