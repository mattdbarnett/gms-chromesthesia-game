/// @description Button 1
draw_set_font(fnt_28)
if point_in_rectangle(mouse_x, mouse_y, 80, 80, 192, 192)
    {
    draw_rectangle_color(80, 80, 192, 192, c_red, c_red, c_red, c_red, false)
    draw_text_colour(96, 128, string_hash_to_newline("Start"), c_black, c_black, c_black, c_black, 1) 
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
        room_goto(rm_play_1)
        }
    }
    else
    {
    draw_rectangle_color(80, 80, 192, 192, c_black, c_black, c_black, c_black, false)
    draw_text_colour(96, 128, string_hash_to_newline("Start"), c_white, c_white, c_white, c_white, 1) 
    but1sound = true
    }

///Button 2

draw_set_font(fnt_22)
if point_in_rectangle(mouse_x, mouse_y, 80, 240, 192, 352)
    {
    draw_rectangle_color(80, 240, 192, 352, c_orange, c_orange, c_orange, c_orange, false)
    draw_text_colour(84, 296, string_hash_to_newline("Options"), c_black, c_black, c_black, c_black, 1) 
    if but2sound = true 
        {
        audio_play_sound(snd_orange, 10, false)
        }
    if audio_is_playing(snd_orange)
        {
        but2sound = false
        }   
    if mouse_check_button_released(mb_left)
        {
        room_goto(rm_menu_options)
        }
    }
    else
    {
    draw_rectangle_color(80, 240, 192, 352, c_black, c_black, c_black, c_black, false)
    draw_text_colour(84, 296, string_hash_to_newline("Options"), c_white, c_white, c_white, c_white, 1) 
    but2sound = true
    }

///Button 3

draw_set_font(fnt_28)
if point_in_rectangle(mouse_x, mouse_y, 80, 400, 192, 512)
    {
    draw_rectangle_color(80, 400, 192, 512, c_yellow, c_yellow, c_yellow, c_yellow, false)
    draw_text_colour(96, 448, string_hash_to_newline("Extra"), c_black, c_black, c_black, c_black, 1) 
    if but3sound = true
        {
        audio_play_sound(snd_yellow, 10, false)
        }
    if audio_is_playing(snd_yellow)
        {
        but3sound = false
        }   
    if mouse_check_button_released(mb_left)
        {
        room_goto(rm_menu_extra)
        }
    }
    else
    {
    draw_rectangle_color(80, 400, 192, 512, c_black, c_black, c_black, c_black, false)
    draw_text_colour(96, 448, string_hash_to_newline("Extra"), c_white, c_white, c_white, c_white, 1) 
    but3sound = true
    }

///Button 4

draw_set_font(fnt_16)
if point_in_rectangle(mouse_x, mouse_y, 80, 560, 192, 672)
    {
    draw_rectangle_color(80, 560, 192, 672, c_green, c_green, c_green, c_green, false)
    draw_text_colour(86, 624, string_hash_to_newline("Customize"), c_black, c_black, c_black, c_black, 1) 
    if but4sound = true
        {
        audio_play_sound(snd_lgreen, 10, false)
        }
    if audio_is_playing(snd_lgreen)
        {
        but4sound = false
        }  
    if mouse_check_button_released(mb_left)
        {
        room_goto(rm_menu_custom)
        }
    }
    else
    {
    draw_rectangle_color(80, 560, 192, 672, c_black, c_black, c_black, c_black, false)
    draw_text_colour(86, 624, string_hash_to_newline("Customize"), c_white, c_white, c_white, c_white, 1) 
    but4sound = true
    }

///Button 5

draw_set_font(fnt_28) 
if point_in_rectangle(mouse_x, mouse_y, 240, 80, 352, 192)
    {
    draw_rectangle_color(240, 80, 352, 192, c_aqua, c_aqua, c_aqua, c_aqua, false)
    draw_text_colour(256, 128, string_hash_to_newline("Load"), c_black, c_black, c_black, c_black, 1) 
    if but5sound = true
        {
        audio_play_sound(snd_turq, 10, false)
        }
    if audio_is_playing(snd_turq)
        {
        but5sound = false
        }   
    }
    else
    {
    draw_rectangle_color(240, 80, 352, 192, c_black, c_black, c_black, c_black, false)
    draw_text_colour(256, 128, string_hash_to_newline("Load"), c_white, c_white, c_white, c_white, 1)
    but5sound = true
    }

///Button 6

draw_set_font(fnt_16)
if point_in_rectangle(mouse_x, mouse_y, 240, 240, 352, 352)
    {
    draw_rectangle_color(240, 240, 352, 352, c_blue, c_blue, c_blue, c_blue, false)
    draw_text_colour(244, 304, string_hash_to_newline("Multiplayer"), c_black, c_black, c_black, c_black, 1) 
    if but6sound = true
        {
        audio_play_sound(snd_blue, 10, false)
        }
    if audio_is_playing(snd_blue)
        {
        but6sound = false
        }   
    if mouse_check_button_released(mb_left)
        {
        room_goto(rm_menu_multi)
        }
    }
    else
    {
    draw_rectangle_color(240, 240, 352, 352, c_black, c_black, c_black, c_black, false)
    draw_text_colour(244, 304, string_hash_to_newline("Multiplayer"), c_white, c_white, c_white, c_white, 1) 
    but6sound = true
    }

with (other) {
///Exit

draw_set_font(fnt_28) 
if point_in_rectangle(mouse_x, mouse_y, 1152, 560, 1264, 672)
    {
    draw_rectangle_color(1152, 560, 1264, 672, c_purple, c_purple, c_purple, c_purple, false)
    draw_text_colour(1168, 608, string_hash_to_newline("Quit"), c_black, c_black, c_black, c_black, 1) 
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
        game_end()
        }
    }
    else
    {
    draw_rectangle_color(1152, 560, 1264, 672, c_black, c_black, c_black, c_black, false)
    draw_text_colour(1168, 608, string_hash_to_newline("Quit"), c_white, c_white, c_white, c_white, 1)
    butexit = true
    }



}
