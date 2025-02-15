/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 28464209
/// @DnDArgument : "sprite" "Sprite17"
/// @DnDArgument : "number" "hp"
/// @DnDSaveInfo : "sprite" "Sprite17"
var l28464209_0 = sprite_get_width(Sprite17);var l28464209_1 = 0;for(var l28464209_2 = hp; l28464209_2 > 0; --l28464209_2) {	draw_sprite(Sprite17, 0, 0 + l28464209_1, 0);	l28464209_1 += l28464209_0;}