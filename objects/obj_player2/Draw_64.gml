if global.pers = true
    {
    draw_set_font(fnt_16)
    draw_set_colour(c_black)
    draw_text(10,75,string_hash_to_newline("P"))
    }
displayY = window_get_height();
displayW = window_get_width();

if global.corrosive2 = false
    {
    draw_rectangle_color( displayW - 48, displayY - 48, displayW, displayY, c_black, c_black, c_black, c_black, false)
    draw_rectangle_color( displayW - 48, displayY - 48, displayW, displayY, c_blue, c_blue, c_blue, c_blue, true)
    }
if global.corrosive2 = true
    {
    draw_rectangle_color( displayW - 48, displayY - 48, displayW, displayY, c_blue, c_blue, c_blue, c_blue, false)
    draw_rectangle_color( displayW - 48, displayY - 48, displayW, displayY, c_black, c_black, c_black, c_black, true)
    draw_set_font(fnt_24)
    draw_set_colour(c_black)
    draw_text( displayW - 36, displayY - 46 ,string_hash_to_newline("C"))
    }


