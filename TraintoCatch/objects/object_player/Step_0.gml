_right = keyboard_check(ord("D"));
_left = keyboard_check(ord("A"));
_jumpKeyPressed = keyboard_check(vk_space);
_dashKeyPressed = keyboard_check(vk_shift);
_crouchKeyPressed = keyboard_check(ord("C"));

var onGround = place_meeting (x, y + 1, o_movingPlatform);

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

dashDuration = max(dashDuration - 1, 0);

if (_dashKeyPressed)
{
	dashDuration = 10;
	xSpeed = image_xscale * dashSpeed;
}

if (dashDuration > 0)
{
	ySpeed = 0;
}

if (dashDuration > 0)
{
	sprite_index = playerSprite_airDash;
}

if (onGround)
{
	if (xSpeed != 0)
	{
		sprite_index = playerSprite_walk;
	}
	else
	{
		sprite_index = playerSprite_idle;
	}
}

if (_jumpKeyPressed) 
{
	sprite_index = playerSprite_jump;
}

if (_crouchKeyPressed)
{
	sprite_index = playerSprite_crouch;
}

