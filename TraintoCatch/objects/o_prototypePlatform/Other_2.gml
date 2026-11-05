/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 5FC78577
/// @DnDArgument : "direction" "0"
direction = 0;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0202ED9B
/// @DnDArgument : "speed" "55"
speed = 55;

/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 3D16DCB5
var l3D16DCB5_0 = collision_point(0, 0, [noone], true, 1);if((l3D16DCB5_0)){}

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 33B95371
/// @DnDArgument : "direction" "180"
direction = 180;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5C12C390
/// @DnDArgument : "key" "ord("E")"
var l5C12C390_0;l5C12C390_0 = keyboard_check(ord("E"));if (l5C12C390_0){}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7A83474C
/// @DnDArgument : "speed" "57.5"
speed = 57.5;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 281C38F5
/// @DnDArgument : "key" "ord("C")"
var l281C38F5_0;l281C38F5_0 = keyboard_check(ord("C"));if (l281C38F5_0){}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 50E8FE97
/// @DnDArgument : "speed" "52.5"
speed = 52.5;