if global.pers = true
    {
    draw_set_font(fnt_16)
    draw_set_colour(c_black)
    draw_text(10,75,string_hash_to_newline("P"))
    }
displayY = window_get_height();
displayW = window_get_width();

if global.corrosive1 = false
    {
    draw_rectangle_color( 0, displayY - 48, 48, displayY, c_black, c_black, c_black, c_black, false)
    draw_rectangle_color( 0, displayY - 48, 48, displayY, c_red, c_red, c_red, c_red, true)
    }
if global.corrosive1 = true
    {
    draw_rectangle_color( 0, displayY - 48, 48, displayY, c_red, c_red, c_red, c_red, false)
    draw_rectangle_color( 0, displayY - 48, 48, displayY, c_black, c_black, c_black, c_black, true)
    draw_set_font(fnt_24)
    draw_set_colour(c_black)
    draw_text(12, displayY - 44,string_hash_to_newline("C"))
    }


