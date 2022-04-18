/// @description Tutorial
draw_set_font(fnt_22)
if point_in_rectangle(mouse_x, mouse_y, 80, 80, 192, 192)
    {
    draw_rectangle_color(80, 80, 192, 192, c_red, c_red, c_red, c_red, false)
    draw_text_colour(84, 136, string_hash_to_newline("Tutorial"), c_black, c_black, c_black, c_black, 1) 
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
        room_goto(rm_m_tutorial)
        }
    }
    else
    {
    draw_rectangle_color(80, 80, 192, 192, c_black, c_black, c_black, c_black, false)
    draw_text_colour(84, 136, string_hash_to_newline("Tutorial"), c_white, c_white, c_white, c_white, 1) 
    but1sound = true
    }

///M_1

draw_set_font(fnt_22) 
if point_in_rectangle(mouse_x, mouse_y, 80, 240, 192, 352)
    {
    draw_rectangle_color(80, 240, 192, 352, c_orange, c_orange, c_orange, c_orange, false)
    draw_text_colour(84, 296, string_hash_to_newline("M - 1"), c_black, c_black, c_black, c_black, 1) 
    if but3sound = true
        {
        audio_play_sound(snd_orange, 10, false)
        }
    if audio_is_playing(snd_orange)
        {
        but3sound = false
        }  
    if mouse_check_button_released(mb_left)
        {
        room_goto(rm_m_1)
        } 
    }
    else
    {
    draw_rectangle_color(80, 240, 192, 352, c_black, c_black, c_black, c_black, false)
    draw_text_colour(84, 296, string_hash_to_newline("M - 1"), c_white, c_white, c_white, c_white, 1)
    but3sound = true
    }

///M_2

draw_set_font(fnt_22) 
if point_in_rectangle(mouse_x, mouse_y, 240, 240, 352, 352)
    {
    draw_rectangle_color(240, 240, 352, 352, c_orange, c_orange, c_orange, c_orange, false)
    draw_text_colour(244, 296, string_hash_to_newline("M - 2"), c_black, c_black, c_black, c_black, 1) 
    if but4sound = true
        {
        audio_play_sound(snd_orange, 10, false)
        }
    if audio_is_playing(snd_orange)
        {
        but4sound = false
        }  
    if mouse_check_button_released(mb_left)
        {
        room_goto(rm_m_2)
        } 
    }
    else
    {
    draw_rectangle_color(240, 240, 352, 352, c_black, c_black, c_black, c_black, false)
    draw_text_colour(244, 296, string_hash_to_newline("M - 2"), c_white, c_white, c_white, c_white, 1)
    but4sound = true
    }

///M_3

draw_set_font(fnt_22) 
if point_in_rectangle(mouse_x, mouse_y, 400, 240, 512, 352)
    {
    draw_rectangle_color(400, 240, 512, 352, c_orange, c_orange, c_orange, c_orange, false)
    draw_text_colour(404, 296, string_hash_to_newline("M - 3"), c_black, c_black, c_black, c_black, 1) 
    if but5sound = true
        {
        audio_play_sound(snd_orange, 10, false)
        }
    if audio_is_playing(snd_orange)
        {
        but5sound = false
        }  
    if mouse_check_button_released(mb_left)
        {
        room_goto(rm_m_3)
        } 
    }
    else
    {
    draw_rectangle_color(400, 240, 512, 352, c_black, c_black, c_black, c_black, false)
    draw_text_colour(404, 296, string_hash_to_newline("M - 3"), c_white, c_white, c_white, c_white, 1)
    but5sound = true
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
