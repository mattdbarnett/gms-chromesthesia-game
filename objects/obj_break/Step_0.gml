localpress = global.press
localpressred = global.pressred
localpressorange = global.pressorange
localpressyellow = global.pressyellow
localpresslgreen = global.presslgreen
localpressturq = global.pressturq
localpressblue = global.pressblue
localpresspurple = global.presspurple

if colour = 1
    {  
    sprite_index = spr_break_red
    
    if localpressred = num
        {
        instance_destroy()
        }
    }
    
if colour = 2
    {
    sprite_index = spr_break_orange
    
    if localpressorange = num
        {
        instance_destroy()
        }
    }
    
if colour = 3
    {
    sprite_index = spr_break_yellow
    
    if localpressyellow = num
        {
        instance_destroy()
        }
    }
    
if colour = 4
    {
    sprite_index = spr_break_lgreen
    
    if localpresslgreen = num
        {
        instance_destroy()
        }
    }
    
if colour = 5
    {
    sprite_index = spr_break_turq
    
    if localpressturq = num
        {
        instance_destroy()
        }
    }
    
if colour = 6
    {
    sprite_index = spr_break_blue

    if localpressblue = num
        {
        instance_destroy()
        }
    }
    
if colour = 7
    {
    sprite_index = spr_break_purple
    
    if localpresspurple = num
        {
        instance_destroy()
        }
    }
    
if colour = 0
    {
    sprite_index = spr_break_any
    
    if localpress = num
        {
        instance_destroy()
        }
    }
    


