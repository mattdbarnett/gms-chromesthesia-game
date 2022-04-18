/// @description Credits
draw_set_font(fnt_24)
if point_in_rectangle(mouse_x, mouse_y, 80, 80, 192, 192)
    {
    draw_rectangle_color(80, 80, 192, 192, c_red, c_red, c_red, c_red, false)
    draw_text_colour(84, 136, string_hash_to_newline("Credits"), c_black, c_black, c_black, c_black, 1) 
    if but1sound = true
        {
        audio_play_sound(snd_red, 10, false)
        }
    if audio_is_playing(snd_red)
        {
        but1sound = false
        }   
    if mouse_check_button_released(mb_left)
        {
        room_goto(rm_menu_credits)
        }
    }
    else
    {
    draw_rectangle_color(80, 80, 192, 192, c_black, c_black, c_black, c_black, false)
    draw_text_colour(84, 136, string_hash_to_newline("Credits"), c_white, c_white, c_white, c_white, 1) 
    but1sound = true
    }

with (other) {
///Exit

draw_set_font(fnt_28) 
if point_in_rectangle(mouse_x, mouse_y, 1152, 560, 1264, 672)
    {
    draw_rectangle_color(1152, 560, 1264, 672, c_purple, c_purple, c_purple, c_purple, false)
    draw_text_colour(1168, 608, string_hash_to_newline("Back"), c_black, c_black, c_black, c_black, 1) 
    if butexit = true
        {
        audio_play_sound(snd_purple, 10, false)
        }
    if audio_is_playing(snd_purple)
        {
        butexit = false
        }   
    if mouse_check_button_released(mb_left)
        {
        room_goto(rm_menu_main)
        }
    }
    else
    {
    draw_rectangle_color(1152, 560, 1264, 672, c_black, c_black, c_black, c_black, false)
    draw_text_colour(1168, 608, string_hash_to_newline("Back"), c_white, c_white, c_white, c_white, 1)
    butexit = true
    }


}
