/* =============================================
		MOVEMENT SETTINGS
================================================  */
speed = 6.0;
gravity = 0.5;

/* =============================================
		MOVEMENT VARIABLES
================================================  */
hspeed = 0;
vspeed = 0;

/* =============================================
		AIR DASH SETTINGS
================================================  */
dash_speed = 14;
dash_duration = 12;
dash_timer = 0;

can_air_dash = true;
is_dashing = false;

// Direction the player faces
//facing = 1;

is_grounded = false;

/* =============================================
		CAMERA SETTINGS
================================================ */
camera_set_view_speed(view_camera [0], 5, 5);


// Camera position
cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);
camera_set_view_pos(view_camera[0], 0, 0);

/* =============================================
		DASH TRAIL SETTINGS
================================================  */
trail_spawn_rate = 2;
trail_spawn_timer = 0;

trail_alpha = 0.5;
trail_fade_speed = 0.06;