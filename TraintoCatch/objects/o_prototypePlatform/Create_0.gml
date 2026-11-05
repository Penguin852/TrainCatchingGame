/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 55D32817
/// @DnDArgument : "direction" "0"
direction = 0;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 449DB2CA
/// @DnDArgument : "speed" "5"
speed = 5;

/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 7A3BEFBF
var l7A3BEFBF_0 = collision_point(0, 0, [noone], true, 1);if((l7A3BEFBF_0)){}

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 4A89E0B0
/// @DnDArgument : "direction" "180"
direction = 180;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7AB92E00
/// @DnDArgument : "key" "ord("E")"
var l7AB92E00_0;l7AB92E00_0 = keyboard_check(ord("E"));if (l7AB92E00_0){}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4AE2483A
/// @DnDArgument : "speed" "2.5"
speed = 2.5;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1CDC32BA
/// @DnDArgument : "key" "ord("C")"
var l1CDC32BA_0;l1CDC32BA_0 = keyboard_check(ord("C"));if (l1CDC32BA_0){}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 2CCF2748
/// @DnDArgument : "speed" "7.5"
speed = 7.5;