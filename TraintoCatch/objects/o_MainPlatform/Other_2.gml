/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 091C75C5
/// @DnDArgument : "direction" "0"
direction = 0;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 70E21980
/// @DnDArgument : "speed" "55"
speed = 55;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 14A62BC3
/// @DnDArgument : "speed" "5"
image_speed = 5;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4CF310DC
/// @DnDArgument : "key" "ord("E")"
var l4CF310DC_0;l4CF310DC_0 = keyboard_check(ord("E"));if (l4CF310DC_0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 07548DC7
	/// @DnDParent : 4CF310DC
	/// @DnDArgument : "speed" "57.5"
	speed = 57.5;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 27F8B562
	/// @DnDParent : 4CF310DC
	/// @DnDArgument : "speed" "7"
	image_speed = 7;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 37DDA270
	/// @DnDParent : 4CF310DC
	/// @DnDArgument : "key" "ord("C")"
	var l37DDA270_0;l37DDA270_0 = keyboard_check(ord("C"));if (l37DDA270_0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 21193054
		/// @DnDParent : 37DDA270
		/// @DnDArgument : "speed" "52.5"
		speed = 52.5;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0F268369
		/// @DnDParent : 37DDA270
		/// @DnDArgument : "speed" "2.5"
		image_speed = 2.5;}}