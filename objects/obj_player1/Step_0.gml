/// @description Movement and Collision

//Get the player's input
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(ord("W"));

//React to inputs
move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;
 
if (place_meeting(x,y+1,obj_wall))
{
    vsp = key_jump * -jumpspeed
}

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;

//Room Border Collision
if x <  0
{
    x = 0
}
if x > room_width
{
    x = room_width
}

if y < 0 //0 being the top of the room
{
    y = 0
}
else if y > room_height
{
    if instance_exists(obj_checkpoint1)
        {
        obj_player1.x = obj_checkpoint1.x
        obj_player1.y = obj_checkpoint1.y
        sprite_index = spr_p1_norm
        jumpspeed = 7;
        movespeed = 4;
        
        if instance_exists(obj_player2)
        {
        if instance_exists(obj_checkpoint2)
            {
            obj_player2.x = obj_checkpoint2.x
            obj_player2.y = obj_checkpoint2.y
                with obj_player2
                    {
                    jumpspeed = 7;
                    movespeed = 4;
                     sprite_index = spr_p2_norm
                    }
            }
        else
            {
            with obj_player2
                    {
                    obj_player2.x = startx
                    obj_player2.y = starty
                    jumpspeed = 7;
                    movespeed = 4;
                    sprite_index = spr_p2_norm
                    }
            }
        }
        }
    else
        {
        room_restart()
        }
}

///Colour Collision

//Red Collison
if place_meeting(x+2,y,obj_red) 
    {
    sprite_index = spr_p1_red;
    }
if place_meeting(x,y+2,obj_red) 
    {
    sprite_index = spr_p1_red;
    }
if place_meeting(x-2,y,obj_red) 
    {
    sprite_index = spr_p1_red;
    }
if place_meeting(x,y-2,obj_red) 
    {
    sprite_index = spr_p1_red;
    }

if place_meeting(x+2,y,obj_touch_red) 
    {
    sprite_index = spr_p1_red;
    }
if place_meeting(x,y+2,obj_touch_red) 
    {
    sprite_index = spr_p1_red;
    }
if place_meeting(x-2,y,obj_touch_red) 
    {
    sprite_index = spr_p1_red;
    }
if place_meeting(x,y-2,obj_touch_red) 
    {
    sprite_index = spr_p1_red;
    }
    
if place_meeting(x+2,y,obj_but_red) 
    {
    sprite_index = spr_p1_red;
    }
if place_meeting(x,y+2,obj_but_red) 
    {
    sprite_index = spr_p1_red;
    }
if place_meeting(x-2,y,obj_but_red) 
    {
    sprite_index = spr_p1_red;
    }
if place_meeting(x,y-2,obj_but_red) 
    {
    sprite_index = spr_p1_red;
    }
    
//Blue Collison
if place_meeting(x+2,y,obj_blue) 
    {
    sprite_index = spr_p1_blue;
    }
if place_meeting(x,y+2,obj_blue) 
    {
    sprite_index = spr_p1_blue;
    }
if place_meeting(x-2,y,obj_blue) 
    {
    sprite_index = spr_p1_blue;
    }
if place_meeting(x,y-2,obj_blue) 
    {
    sprite_index = spr_p1_blue;
    }
    
if place_meeting(x+2,y,obj_but_blue) 
    {
    sprite_index = spr_p1_blue;
    }
if place_meeting(x,y+2,obj_but_blue) 
    {
    sprite_index = spr_p1_blue;
    }
if place_meeting(x-2,y,obj_but_blue) 
    {
    sprite_index = spr_p1_blue;
    }
if place_meeting(x,y-2,obj_but_blue) 
    {
    sprite_index = spr_p1_blue;
    }
    
if place_meeting(x+2,y,obj_touch_blue) 
    {
    sprite_index = spr_p1_blue;
    }
if place_meeting(x,y+2,obj_touch_blue) 
    {
    sprite_index = spr_p1_blue;
    }
if place_meeting(x-2,y,obj_touch_blue) 
    {
    sprite_index = spr_p1_blue;
    }
if place_meeting(x,y-2,obj_touch_blue) 
    {
    sprite_index = spr_p1_blue;
    }
    
//Orange Collison
if place_meeting(x+2,y,obj_orange) 
    {
    sprite_index = spr_p1_orange;
    }
if place_meeting(x,y+2,obj_orange) 
    {
    sprite_index = spr_p1_orange;
    }
if place_meeting(x-2,y,obj_orange) 
    {
    sprite_index = spr_p1_orange;
    }
if place_meeting(x,y-2,obj_orange) 
    {
    sprite_index = spr_p1_orange;
    }
    
if place_meeting(x+2,y,obj_but_orange) 
    {
    sprite_index = spr_p1_orange;
    }
if place_meeting(x,y+2,obj_but_orange) 
    {
    sprite_index = spr_p1_orange;
    }
if place_meeting(x-2,y,obj_but_orange) 
    {
    sprite_index = spr_p1_orange;
    }
if place_meeting(x,y-2,obj_but_orange) 
    {
    sprite_index = spr_p1_orange;
    }

//Yellow Collison
if place_meeting(x+2,y,obj_yellow) 
    {
    sprite_index = spr_p1_yellow;
    }
if place_meeting(x,y+2,obj_yellow) 
    {
    sprite_index = spr_p1_yellow;
    }
if place_meeting(x-2,y,obj_yellow) 
    {
    sprite_index = spr_p1_yellow;
    }
if place_meeting(x,y-2,obj_yellow) 
    {
    sprite_index = spr_p1_yellow;
    }
    
if place_meeting(x+2,y,obj_but_yellow) 
    {
    sprite_index = spr_p1_yellow;
    }
if place_meeting(x,y+2,obj_but_yellow) 
    {
    sprite_index = spr_p1_yellow;
    }
if place_meeting(x-2,y,obj_but_yellow) 
    {
    sprite_index = spr_p1_yellow;
    }
if place_meeting(x,y-2,obj_but_yellow) 
    {
    sprite_index = spr_p1_yellow;
    }
    
//LGreen Collison
if place_meeting(x+2,y,obj_lgreen) 
    {
    sprite_index = spr_p1_lgreen;
    }
if place_meeting(x,y+2,obj_lgreen) 
    {
    sprite_index = spr_p1_lgreen;
    }
if place_meeting(x-2,y,obj_lgreen) 
    {
    sprite_index = spr_p1_lgreen;
    }
if place_meeting(x,y-2,obj_lgreen) 
    {
    sprite_index = spr_p1_lgreen;
    }

if place_meeting(x+2,y,obj_but_lgreen) 
    {
    sprite_index = spr_p1_lgreen;
    }
if place_meeting(x,y+2,obj_but_lgreen) 
    {
    sprite_index = spr_p1_lgreen;
    }
if place_meeting(x-2,y,obj_but_lgreen) 
    {
    sprite_index = spr_p1_lgreen;
    }
if place_meeting(x,y-2,obj_but_lgreen) 
    {
    sprite_index = spr_p1_lgreen;
    }
//Turq Collison
if place_meeting(x+2,y,obj_turq) 
    {
    sprite_index = spr_p1_turq;
    }
if place_meeting(x,y+2,obj_turq) 
    {
    sprite_index = spr_p1_turq;
    }
if place_meeting(x-2,y,obj_turq) 
    {
    sprite_index = spr_p1_turq;
    }
if place_meeting(x,y-2,obj_turq) 
    {
    sprite_index = spr_p1_turq;
    }
    
if place_meeting(x+2,y,obj_but_turq) 
    {
    sprite_index = spr_p1_turq;
    }
if place_meeting(x,y+2,obj_but_turq) 
    {
    sprite_index = spr_p1_turq;
    }
if place_meeting(x-2,y,obj_but_turq) 
    {
    sprite_index = spr_p1_turq;
    }
if place_meeting(x,y-2,obj_but_turq) 
    {
    sprite_index = spr_p1_turq;
    }
    
//Purple Collison
if place_meeting(x+2,y,obj_purple) 
    {
    sprite_index = spr_p1_purple;
    }
if place_meeting(x,y+2,obj_purple) 
    {
    sprite_index = spr_p1_purple;
    }
if place_meeting(x-2,y,obj_purple) 
    {
    sprite_index = spr_p1_purple;
    }
if place_meeting(x,y-2,obj_purple) 
    {
    sprite_index = spr_p1_purple;
    }
    
if place_meeting(x+2,y,obj_but_purple) 
    {
    sprite_index = spr_p1_purple;
    }
if place_meeting(x,y+2,obj_but_purple) 
    {
    sprite_index = spr_p1_purple;
    }
if place_meeting(x-2,y,obj_but_purple) 
    {
    sprite_index = spr_p1_purple;
    }
if place_meeting(x,y-2,obj_but_purple) 
    {
    sprite_index = spr_p1_purple;
    }

///Command Input

if keyboard_check(ord("R"))
    {
    if instance_exists(obj_checkpoint1)
        {
        obj_player1.x = obj_checkpoint1.x
        obj_player1.y = obj_checkpoint1.y
        sprite_index = spr_p1_norm
        jumpspeed = 3.5
        movespeed = 2
        
        if instance_exists(obj_player2)
        {
        if instance_exists(obj_checkpoint2)
            {
            obj_player2.x = obj_checkpoint2.x
            obj_player2.y = obj_checkpoint2.y
                with obj_player2
                    {
                    jumpspeed = 3.5
                    movespeed = 2
                     sprite_index = spr_p2_norm
                    }
            }
        else
            {
            with obj_player2
                    {
                    obj_player2.x = startx
                    obj_player2.y = starty
                    jumpspeed = 3.5
                    movespeed = 2
                    sprite_index = spr_p2_norm
                    }
            }
        }
        }
    else
        {
        room_restart()
        }
    audio_play_sound(snd_select, 10, false)
    }
    
if keyboard_check_released(ord("X"))
    {
    if global.check1 = 0
        {
        instance_create(x,y,obj_checkpoint1)
        global.check1 = 1
        }
    audio_play_sound(snd_select, 10, false)
    }
    
if keyboard_check(ord("Q"))
    {
    sprite_index = spr_p1_norm
    audio_play_sound(snd_select, 10, false)
    }
    
if keyboard_check_released(ord("P"))
    {
    global.pers = !global.pers
    audio_play_sound(snd_select, 10, false)
    }
    
if keyboard_check_released(ord("C"))
    {
    global.corrosive1 = !global.corrosive1
    audio_play_sound(snd_select, 10, false)
    }

if keyboard_check_released(vk_escape)
    {
    room_goto(rm_menu_main)
    audio_play_sound(snd_select, 10, false)    
    }
    
      
      

///Styles


//Default

if global.custom = 0
    {
    with obj_powerup
        {
        sprite_index = spr_powerup
        }
    }

//Halloween

if global.custom = 1
    {
    with obj_powerup
        {
        sprite_index = spr_powerup_h
        }
    __background_set( e__BG.Index, 0, bkh );
    }

