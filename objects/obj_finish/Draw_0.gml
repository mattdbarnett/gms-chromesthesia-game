/// @description Tutorial
if global.finish = rm_tutorial
    {
    draw_text_colour(96, 128, string_hash_to_newline("Tutorial Completed!"), c_green, c_green, c_green, c_green, 1) 
    draw_text_colour(96, 296, string_hash_to_newline("Rating:"), c_black, c_black, c_black, c_black, 1) 
    draw_text_colour(96, 448, string_hash_to_newline("Excellent"), c_green, c_green, c_green, c_green, 1)
    }


///R_1
if global.finish = rm_r_1
    {
    draw_text_colour(96, 128, string_hash_to_newline("R:1 Completed!"), c_green, c_green, c_green, c_green, 1) 
    draw_text_colour(96, 296, string_hash_to_newline("Rating:"), c_black, c_black, c_black, c_black, 1) 
    if global.check = 0
        {
        draw_text_colour(96, 448, string_hash_to_newline("Excellent"), c_green, c_green, c_green, c_green, 1)
        }
    if global.check = 1
        {
        draw_text_colour(96, 448, string_hash_to_newline("Good"), c_green, c_green, c_green, c_green, 1)
        }
    }


///R_2
if global.finish = rm_r_2
    {
    draw_text_colour(96, 128, string_hash_to_newline("R:2 Completed!"), c_green, c_green, c_green, c_green, 1) 
    draw_text_colour(96, 296, string_hash_to_newline("Rating:"), c_black, c_black, c_black, c_black, 1) 
    if global.check = 0
        {
        draw_text_colour(96, 448, string_hash_to_newline("Excellent"), c_green, c_green, c_green, c_green, 1)
        }
    if global.check = 1
        {
        draw_text_colour(96, 448, string_hash_to_newline("Good"), c_green, c_green, c_green, c_green, 1)
        }
    }


///R_3
if global.finish = rm_r_3
    {
    draw_text_colour(96, 128, string_hash_to_newline("R:3 Completed!"), c_green, c_green, c_green, c_green, 1) 
    draw_text_colour(96, 296, string_hash_to_newline("Rating:"), c_black, c_black, c_black, c_black, 1) 
    if global.check = 0
        {
        draw_text_colour(96, 448, string_hash_to_newline("Excellent"), c_green, c_green, c_green, c_green, 1)
        }
    if global.check = 1
        {
        draw_text_colour(96, 448, string_hash_to_newline("Good"), c_green, c_green, c_green, c_green, 1)
        }
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
