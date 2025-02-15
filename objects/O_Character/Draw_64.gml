/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 28464209
/// @DnDArgument : "sprite" "S_Hpvisual"
/// @DnDArgument : "number" "hp"
/// @DnDSaveInfo : "sprite" "S_Hpvisual"
var l28464209_0 = sprite_get_width(S_Hpvisual);var l28464209_1 = 0;for(var l28464209_2 = hp; l28464209_2 > 0; --l28464209_2) {	draw_sprite(S_Hpvisual, 0, 0 + l28464209_1, 0);	l28464209_1 += l28464209_0;}