with (other) {
///Label 1
draw_set_font(fnt_22)
draw_text_colour(96, 288, string_hash_to_newline("Resolution"), c_black, c_black, c_black, c_black, 1) 


}
///Label 2
draw_set_font(fnt_22)
draw_text_colour(96, 128, string_hash_to_newline("Fullscreen"), c_black, c_black, c_black, c_black, 1) 


///Button 5

draw_set_font(fnt_28) 
if point_in_rectangle(mouse_x, mouse_y, 240, 80, 352, 192)
    {
    if tog_fullscreen = true
        {
        draw_rectangle_color(240, 80, 352, 192, c_aqua, c_aqua, c_aqua, c_aqua, false)
        draw_text_colour(256, 128, string_hash_to_newline("On"), c_black, c_black, c_black, c_black, 1)
        }
        else
        {
        draw_rectangle_color(240, 80, 352, 192, c_aqua, c_aqua, c_aqua, c_aqua, false)
        draw_text_colour(256, 128, string_hash_to_newline("Off"), c_black, c_black, c_black, c_black, 1)
        }
        if but5sound = true
        {
        audio_play_sound(snd_turq, 10, false)
        }
    if audio_is_playing(snd_turq)
        {
        but5sound = false
        }   
    if mouse_check_button_released(mb_left)
        {
        tog_fullscreen = !tog_fullscreen
        window_set_fullscreen(tog_fullscreen)
        audio_play_sound(snd_select, 10, false)   
        }
    }
    else
    {
    if tog_fullscreen = true
        {
        draw_rectangle_color(240, 80, 352, 192, c_black, c_black, c_black, c_black, false)
        draw_text_colour(256, 128, string_hash_to_newline("On"), c_white, c_white, c_white, c_white, 1)
        }
        else
        {
        draw_rectangle_color(240, 80, 352, 192, c_black, c_black, c_black, c_black, false)
        draw_text_colour(256, 128, string_hash_to_newline("Off"), c_white, c_white, c_white, c_white, 1)
        }
    but5sound = true
    }

///Button 6

draw_set_font(fnt_16)
if point_in_rectangle(mouse_x, mouse_y, 240, 240, 352, 352)
    {
    draw_rectangle_color(240, 240, 352, 352, c_blue, c_blue, c_blue, c_blue, false)
    draw_text_colour(244, 304, string_hash_to_newline("1366x768"), c_black, c_black, c_black, c_black, 1) 
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
        window_set_size(1366, 768)
        surface_resize(application_surface, 1366, 768) 
        }
    }
    else
    {
    draw_rectangle_color(240, 240, 352, 352, c_black, c_black, c_black, c_black, false)
    draw_text_colour(244, 304, string_hash_to_newline("1366x768"), c_white, c_white, c_white, c_white, 1) 
    but6sound = true
    }

///Button 7

draw_set_font(fnt_16)
if point_in_rectangle(mouse_x, mouse_y, 400, 240, 512, 352)
    {
    draw_rectangle_color(400, 240, 512, 352, c_blue, c_blue, c_blue, c_blue, false)
    draw_text_colour(404, 304, string_hash_to_newline("1920x1080"), c_black, c_black, c_black, c_black, 1) 
    if but7sound = true
        {
        audio_play_sound(snd_blue, 10, false)
        }
    if audio_is_playing(snd_blue)
        {
        but7sound = false
        }   
    if mouse_check_button_released(mb_left)
        {
        window_set_size(1920, 1080)
        surface_resize(application_surface, 1920, 1080) 
        }
    }
    else
    {
    draw_rectangle_color(400, 240, 512, 352, c_black, c_black, c_black, c_black, false)
    draw_text_colour(404, 304, string_hash_to_newline("1920x1080"), c_white, c_white, c_white, c_white, 1) 
    but7sound = true
    }

///Button 8

draw_set_font(fnt_28)
if point_in_rectangle(mouse_x, mouse_y, 560, 240, 672, 352)
    {
    draw_rectangle_color(560, 240, 672, 352, c_blue, c_blue, c_blue, c_blue, false)
    draw_text_colour(576, 288, string_hash_to_newline("Auto"), c_black, c_black, c_black, c_black, 1) 
    if but8sound = true
        {
        audio_play_sound(snd_blue, 10, false)
        }
    if audio_is_playing(snd_blue)
        {
        but8sound = false
        }   
    if mouse_check_button_released(mb_left)
        {
        //Default Resolution Function
        displayW = display_get_width();
        displayY = display_get_height();

        window_set_size(displayW, displayY)
        surface_resize(application_surface, displayW, displayY) 
        }
    }
    else
    {
    draw_rectangle_color(560, 240, 672, 352, c_black, c_black, c_black, c_black, false)
    draw_text_colour(576, 288, string_hash_to_newline("Auto"), c_white, c_white, c_white, c_white, 1) 
    but8sound = true
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
