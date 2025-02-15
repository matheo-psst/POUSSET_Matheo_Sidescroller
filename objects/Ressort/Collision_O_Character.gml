/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3C922759
/// @DnDApplyTo : {O_Character}
/// @DnDArgument : "expr" " true"
/// @DnDArgument : "var" "powerup"
with(O_Character) {
powerup =  true;

}

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 18BE2B37
/// @DnDArgument : "type" "7"
/// @DnDArgument : "size" "1"
effect_create_below(7, 0, 0, 1, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 09829E63
instance_destroy();