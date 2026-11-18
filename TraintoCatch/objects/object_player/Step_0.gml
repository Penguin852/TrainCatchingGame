/* ========================================
		PLAYER INPUT 
===========================================  */
if (keyboard_check(ord("A"))) // Move left
{
	x = x - 2;
	image_xscale = -1;
}

if (keyboard_check(ord("D")))  // Move right
{
	x = x + 2;
	image_xscale = 1;
}

if (keyboard_check(ord("S")))
{
	y = y + 2;
}

/* ========================================
		GROUND CHECK
===========================================  */
is_grounded = place_meeting(x, y + 1, o_movingPlatform);

// Reset dash when grounded
if (is_grounded)
{
	can_air_dash = true;
	is_dashing = false;
}

/* ========================================
		JUMPING
===========================================  */
if (keyboard_check(vk_space) && is_grounded)
{
	vspeed = sqrt(128 * gravity)
}

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
		var ghost = instance_create_layer(x - 15, y, layer, 