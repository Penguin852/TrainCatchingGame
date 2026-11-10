// Input

var move_input = 0;

if (keyboard_check(ord("A"))) 
{
	move_input -= 1;
}

if (keyboard_check(ord("D")))
{
	move_input += 1;
}

//		Update facing directions

if (move_input != 0) 
{
	facing = sign(move_input);
}

// Ground Check

is_grounded = place_meeting(x, y + 1, obj_solid);

//		Reset dash when grounded

if(is_grounded) 
{
	can_air_dash = true;
	is_dashing = false;
}

// Jumping

if (keyboard_check_pressed(vk_space) && is_grounded)
{
	vsp = -sqrt(2 * gravity * jump_height * 32);
}

// Air Dash

//		Start Dash
if (keyboard_check_pressed(vk_shift) && !is_grounded && can_air_dash)
{
	is_dashing = true;
	can_air_dash = false;
	
	dash_timer = dash_duration;
	
	// Reset trail timer
	trail_spawn_timer = 0;
	
	// Cancel vertical movement
	vsp = 0;
}

//		Handle Active Dash
if (is_dashing)
{
	dash_timer--;
	
	// Dash Horizontally
	hsp = facing * dash_speed;
	
	// Disable gravity during dash
	vsp = 0;
	
	// End dash
	if (dash_timer <= 0)
	{
		is_dashing = false;
	}
}
else
{
	// Normal Horizontal Movement
	hsp = move_input * move_speed;
	
	// Apply Gravity
	vsp += gravity;
}

// Max Fall Speed

vsp = min(vsp, max_fall_speed);

// Horizontal Collision

if (place_meeting (x + hsp, y, obj_solid))
{
	while(!place_meeting (x + sign(hsp), y, obj_solid))
	{
		x += sign(hsp);
	}
	
	hsp = 0;
	
	// Cancel dash if hitting a wall
	is_dashing = false;
}

x += hsp;

// Dash Trail Spawning

if (is_dashing)
{
	trail_spawn_timer--;
	if (trail_spawn_timer <= 0)
	{
		// Create a ghost behind the player
		var ghost = instance_create_layer(x - facing * 8, y, layer, obj_dash_ghost);
		
		// Copy player's appearance
		ghost.sprite_index = sprite_index;
		ghost.image_index = image_index;
		ghost.image_xscale = image_xscale;
		ghost.image_yscale = image_yscale;
		ghost.image_angle = image_angle;
		
		// Trail appearance
		ghost.image_alpha = trail_alpha;
		ghost.image_blend = c_aqua;
		ghost.fade_speed = trail_fade_speed;
		
		// Draw behind player
		ghost.depth = depth + 1;
		
		// Reset spawn timer
		trail_spawn_timer = trail_spawn_rate;
	}
}

// Vertical Collision
if (place_meeting (x, y + vsp, obj_solid))
{
	while (!place_meeting (x, y + sign(vsp), obj_solid))
	{
		y += sign(vsp);
	}
	
	vsp = 0;
	
	// Cancel dashing if hitting something
	
	is_dashing = false;
}

y += vsp;

// Camera Follow

var cam = view_camera[0];

var target_x = x - camera_get_view_width(cam) / 2;
var target_y = y - camera_get_view_height(cam) / 2;

var current_x = camera_get_view_x(cam);
var current_y = camera_get_view_y(cam);

var new_x = lerp (current_x, target_x, camera_follow_speed);
var new_y = lerp (current_y, target_y, camera_follow_speed);

camera_set_view_pos (cam, new_x, new_y);