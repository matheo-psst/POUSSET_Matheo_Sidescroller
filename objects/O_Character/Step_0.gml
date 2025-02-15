/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E11CEF1
/// @DnDArgument : "var" "powerup"
/// @DnDArgument : "value" "true"
if(powerup == true){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2AD8B765
	/// @DnDParent : 6E11CEF1
	/// @DnDArgument : "expr" "28"
	/// @DnDArgument : "var" "maxspeed"
	maxspeed = 28;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24E6BE89
	/// @DnDParent : 6E11CEF1
	/// @DnDArgument : "expr" "12"
	/// @DnDArgument : "var" "minspeed"
	minspeed = 12;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 19520897
/// @DnDArgument : "x" "6"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-8"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "O_Collider"
/// @DnDSaveInfo : "object" "O_Collider"
var l19520897_0 = instance_place(x + 6, y + -8, [O_Collider]);if ((l19520897_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1C85E648
	/// @DnDParent : 19520897
	/// @DnDArgument : "speed_relative" "1"
	/// @DnDArgument : "type" "1"
	hspeed += 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 29A51CBC
/// @DnDArgument : "x" "-6"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-8"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "O_Collider"
/// @DnDSaveInfo : "object" "O_Collider"
var l29A51CBC_0 = instance_place(x + -6, y + -8, [O_Collider]);if ((l29A51CBC_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7382ACD2
	/// @DnDParent : 29A51CBC
	/// @DnDArgument : "type" "1"
	hspeed = 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5E039DF1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "O_Collider"
/// @DnDSaveInfo : "object" "O_Collider"
var l5E039DF1_0 = instance_place(x + 0, y + -1, [O_Collider]);if ((l5E039DF1_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 69C25CA2
	/// @DnDParent : 5E039DF1
	/// @DnDArgument : "speed" "GravityPower"
	/// @DnDArgument : "type" "2"
	vspeed = GravityPower;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0EF1B7A7
/// @DnDArgument : "var" "jumpspeed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "maxspeed"
if(jumpspeed > maxspeed){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78A5A879
	/// @DnDParent : 0EF1B7A7
	/// @DnDArgument : "expr" "maxspeed"
	/// @DnDArgument : "var" "jumpspeed"
	jumpspeed = maxspeed;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2558D8F3
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E961E49
	/// @DnDParent : 2558D8F3
	/// @DnDArgument : "var" "checkpointval"
	if(checkpointval == 0){	/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 589CE81D
		/// @DnDParent : 1E961E49
		room_restart();}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44609797
	/// @DnDParent : 2558D8F3
	/// @DnDArgument : "var" "checkpointval"
	/// @DnDArgument : "value" "1"
	if(checkpointval == 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50085487
		/// @DnDParent : 44609797
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "var" "hp"
		hp = 5;
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 451D0782
		/// @DnDParent : 44609797
		/// @DnDArgument : "x" "checkpoint.x"
		/// @DnDArgument : "y" "checkpoint.y"
		x = checkpoint.x;y = checkpoint.y;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4184AE84
	/// @DnDParent : 2558D8F3
	/// @DnDArgument : "var" "checkpointval"
	/// @DnDArgument : "value" "2"
	if(checkpointval == 2){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73422AA6
		/// @DnDParent : 4184AE84
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "hp"
		hp += 5;
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 576637A8
		/// @DnDParent : 4184AE84
		/// @DnDArgument : "x" "checkpoint_1.x"
		/// @DnDArgument : "y" "checkpoint_1.y"
		x = checkpoint_1.x;y = checkpoint_1.y;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B1AD5B6
	/// @DnDParent : 2558D8F3
	/// @DnDArgument : "var" "checkpointval"
	/// @DnDArgument : "value" "3"
	if(checkpointval == 3){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39480D59
		/// @DnDParent : 7B1AD5B6
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "var" "hp"
		hp = 5;
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 08FF644E
		/// @DnDParent : 7B1AD5B6
		/// @DnDArgument : "x" "checkpoint_2.x"
		/// @DnDArgument : "y" "checkpoint_2.y"
		/// @DnDArgument : "y_relative" "1"
		x = checkpoint_2.x;y += checkpoint_2.y;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D868A1A
/// @DnDArgument : "var" "powerup"
/// @DnDArgument : "value" "true"
if(powerup == true){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 340D0217
	/// @DnDParent : 2D868A1A
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "not" "1"
	if(!(speed == 0)){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0A096BDD
		/// @DnDParent : 340D0217
		/// @DnDArgument : "imageind" ""
		/// @DnDArgument : "spriteind" "S_Marchepowerup"
		/// @DnDSaveInfo : "spriteind" "S_Marchepowerup"
		sprite_index = S_Marchepowerup;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25662368
	/// @DnDParent : 2D868A1A
	/// @DnDArgument : "var" "speed"
	if(speed == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 50DD554E
		/// @DnDParent : 25662368
		/// @DnDArgument : "imageind" ""
		/// @DnDArgument : "spriteind" "S_Charapowerup"
		/// @DnDSaveInfo : "spriteind" "S_Charapowerup"
		sprite_index = S_Charapowerup;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 154CC1B1
/// @DnDArgument : "var" "powerup"
/// @DnDArgument : "value" "false"
if(powerup == false){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0BF19FFD
	/// @DnDParent : 154CC1B1
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "not" "1"
	if(!(speed == 0)){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 116576F9
		/// @DnDParent : 0BF19FFD
		/// @DnDArgument : "imageind" ""
		/// @DnDArgument : "spriteind" "S_Marchebase"
		/// @DnDSaveInfo : "spriteind" "S_Marchebase"
		sprite_index = S_Marchebase;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 322C53E6
	/// @DnDParent : 154CC1B1
	/// @DnDArgument : "var" "speed"
	if(speed == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 532C68C6
		/// @DnDParent : 322C53E6
		/// @DnDArgument : "imageind" ""
		/// @DnDArgument : "spriteind" "S_charcater_base"
		/// @DnDSaveInfo : "spriteind" "S_charcater_base"
		sprite_index = S_charcater_base;}}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 68712F27
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "O_Collider"
/// @DnDSaveInfo : "object" "O_Collider"
var l68712F27_0 = instance_place(x + 0, y + 1, [O_Collider]);if ((l68712F27_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7D3B0638
	/// @DnDParent : 68712F27
	/// @DnDArgument : "type" "2"
	vspeed = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 7013069F
	/// @DnDParent : 68712F27
	var l7013069F_0;l7013069F_0 = keyboard_check(vk_space);if (l7013069F_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 217AB0AB
		/// @DnDParent : 7013069F
		/// @DnDArgument : "expr" "0.3"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "jumpspeed"
		jumpspeed += 0.3;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 40461092
		/// @DnDParent : 7013069F
		/// @DnDArgument : "spriteind" "S_Saut"
		/// @DnDSaveInfo : "spriteind" "S_Saut"
		sprite_index = S_Saut;
		image_index = 0;}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
	/// @DnDVersion : 1
	/// @DnDHash : 6742CAA2
	/// @DnDParent : 68712F27
	var l6742CAA2_0;l6742CAA2_0 = keyboard_check_released(vk_space);if (l6742CAA2_0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 2BFE0E41
		/// @DnDParent : 6742CAA2
		/// @DnDArgument : "speed" "-jumpspeed"
		/// @DnDArgument : "type" "2"
		vspeed = -jumpspeed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1BA20DB8
		/// @DnDParent : 6742CAA2
		/// @DnDArgument : "expr" "minspeed"
		/// @DnDArgument : "var" "jumpspeed"
		jumpspeed = minspeed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3251F03F
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D9128C4
	/// @DnDParent : 3251F03F
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "GravityPower"
	if(vspeed < GravityPower){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 1BF306F1
		/// @DnDParent : 3D9128C4
		/// @DnDArgument : "speed" "1"
		/// @DnDArgument : "speed_relative" "1"
		/// @DnDArgument : "type" "2"
		vspeed += 1;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 50EE7BB7
	/// @DnDParent : 3251F03F
	else{	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 55927A03
		/// @DnDParent : 50EE7BB7
		/// @DnDArgument : "speed" "GravityPower"
		/// @DnDArgument : "type" "2"
		vspeed = GravityPower;}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 32D08C49
/// @DnDArgument : "key" "ord("Q")"
/// @DnDArgument : "not" "1"
var l32D08C49_0;l32D08C49_0 = keyboard_check(ord("Q"));if (!l32D08C49_0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5A3256DE
	/// @DnDParent : 32D08C49
	/// @DnDArgument : "key" "ord("D")"
	/// @DnDArgument : "not" "1"
	var l5A3256DE_0;l5A3256DE_0 = keyboard_check(ord("D"));if (!l5A3256DE_0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4B0D0181
		/// @DnDParent : 5A3256DE
		/// @DnDArgument : "type" "1"
		hspeed = 0;}}