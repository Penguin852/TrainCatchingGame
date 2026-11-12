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


