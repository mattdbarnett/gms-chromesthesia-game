
if colour = 1
    {  
    sprite_index = spr_break_red
    if global.redfrequency = true
        {
        x = 999999
        y = 999999
        }
    if global.redfrequency = false
        {
        x = savex
        y = savey
        }
    }
    
if colour = 2
    {
    sprite_index = spr_break_orange
    }
    
if colour = 3
    {
    sprite_index = spr_break_yellow
    }
    
if colour = 4
    {
    sprite_index = spr_break_lgreen
    }
    
if colour = 5
    {
    sprite_index = spr_break_turq
    }
    
if colour = 6
    {
    sprite_index = spr_break_blue

    if global.bluefrequency = true
        {
        x = 999999
        y = 999999
        }
    if global.bluefrequency = false
        {
        x = savex
        y = savey
        }
    }
    
if colour = 7
    {
    sprite_index = spr_break_purple
    }
    
if colour = 0
    {
    sprite_index = spr_break_any
    
    if localpress = num
        {
        instance_destroy()
        }
    }
    


