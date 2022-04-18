with (other) {
///Label 1
draw_set_font(fnt_22)
draw_text_colour(96, 132, string_hash_to_newline("Style"), c_black, c_black, c_black, c_black, 1) 


}
///Label 2
draw_set_font(fnt_22)

if global.custom = 0
    {
    draw_text_colour(234, 285, string_hash_to_newline("Default"), c_black, c_black, c_black, c_black, 1) 
    }
    
if global.custom = 1
    {
    draw_text_colour(234, 285, string_hash_to_newline("Halloween"), c_black, c_black, c_black, c_black, 1) 
    }

///Arrow LEFT

draw_set_font(fnt_22)
if point_in_rectangle(mouse_x, mouse_y, 80, 240, 192, 352)
    {
    draw_rectangle_color(80, 240, 192, 352, c_aqua, c_aqua, c_aqua, c_aqua, false)
    draw_text_colour(84, 296, string_hash_to_newline("<--"), c_black, c_black, c_black, c_black, 1) 
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
        global.custom = 0
        }
    }
    else
    {
    draw_rectangle_color(80, 240, 192, 352, c_black, c_black, c_black, c_black, false)
    draw_text_colour(84, 296, string_hash_to_newline("<--"), c_white, c_white, c_white, c_white, 1) 
    but2sound = true
    }

///Arrow RIGHT

draw_set_font(fnt_22) 
if point_in_rectangle(mouse_x, mouse_y, 400, 240, 512, 352)
    {
    draw_rectangle_color(400, 240, 512, 352, c_aqua, c_aqua, c_aqua, c_aqua, false)
    draw_text_colour(404, 296, string_hash_to_newline("-->"), c_black, c_black, c_black, c_black, 1) 
    if but3sound = true
        {
        audio_play_sound(snd_turq, 10, false)
        }
    if audio_is_playing(snd_turq)
        {
        but3sound = false
        }  
    if mouse_check_button_released(mb_left)
        {
        global.custom = 1
        } 
    }
    else
    {
    draw_rectangle_color(400, 240, 512, 352, c_black, c_black, c_black, c_black, false)
    draw_text_colour(404, 296, string_hash_to_newline("-->"), c_white, c_white, c_white, c_white, 1)
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
