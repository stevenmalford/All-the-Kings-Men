///button_pressed(x, y, sprite_index)

var xx = argument0;
var yy = argument1;
var spritename = argument2;
var spriteheight = sprite_get_height(spritename);
var spritewidth = sprite_get_width(spritename);
var spriteleft = xx - (spritewidth / 2);
var spriteright = xx + (spritewidth / 2);
var spritetop = yy - (spriteheight / 2);
var spritebottom = yy + (spriteheight / 2);

clicked = false;

if device_mouse_x_to_gui(0) > spriteleft && device_mouse_x_to_gui(0) < spriteright && device_mouse_y_to_gui(0) > spritetop && device_mouse_y_to_gui(0) < spritebottom
{
    if mouse_check_button_pressed(mb_left)
    {
        clicked = true;
    }
}

return(clicked);
