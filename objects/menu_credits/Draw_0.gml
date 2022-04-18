/// @description Credits
draw_set_font(fnt_c_16b)
draw_text_colour(20, 40, string_hash_to_newline("Sound Effects"), c_black, c_black, c_black, c_black, 1) 
draw_set_font(fnt_c_16)
draw_text_colour(20, 72, string_hash_to_newline("University of Iowa Electronic Music Studios"), c_black, c_black, c_black, c_black, 1) 

draw_set_font(fnt_c_16b)
draw_text_colour(20, 136, string_hash_to_newline("Testing"), c_black, c_black, c_black, c_black, 1) 
draw_set_font(fnt_c_16)
draw_text_colour(20, 168, string_hash_to_newline("Ruby Palmer"), c_black, c_black, c_black, c_black, 1) 
draw_text_colour(20, 200, string_hash_to_newline("David Wilkinson"), c_black, c_black, c_black, c_black, 1) 

draw_set_font(fnt_c_16b)
draw_text_colour(20, 264, string_hash_to_newline("Everything Else"), c_black, c_black, c_black, c_black, 1) 
draw_set_font(fnt_c_16)
draw_text_colour(20, 296, string_hash_to_newline("Matt Barnett"), c_black, c_black, c_black, c_black, 1) 




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
