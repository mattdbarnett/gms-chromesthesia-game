/// @description Movement and Collision

//Get the player's input
key_right = keyboard_check(vk_right);
key_left = -keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_up);

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
    if instance_exists(obj_checkpoint2)
        {
        obj_player2.x = obj_checkpoint2.x
        obj_player2.y = obj_checkpoint2.y
        sprite_index = spr_p2_norm
        jumpspeed = 7;
        movespeed = 4;
        
        if instance_exists(obj_player1)
        {
        if instance_exists(obj_checkpoint1)
            {
            obj_player1.x = obj_checkpoint1.x
            obj_player1.y = obj_checkpoint1.y
                with obj_player1
                {
                jumpspeed = 7;
                movespeed = 4;
                sprite_index = spr_p1_norm
                }
            }
        else
            {
                with obj_player1
                    {
                    obj_player1.x = startx
                    obj_player1.y = starty
                    jumpspeed = 7;
                    movespeed = 4;
                    sprite_index = spr_p1_norm
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
    sprite_index = spr_p2_red;
    }
if place_meeting(x,y+2,obj_red) 
    {
    sprite_index = spr_p2_red;
    }
if place_meeting(x-2,y,obj_red) 
    {
    sprite_index = spr_p2_red;
    }
if place_meeting(x,y-2,obj_red) 
    {
    sprite_index = spr_p2_red;
    }

if place_meeting(x+2,y,obj_but_red) 
    {
    sprite_index = spr_p2_red;
    }
if place_meeting(x,y+2,obj_but_red) 
    {
    sprite_index = spr_p2_red;
    }
if place_meeting(x-2,y,obj_but_red) 
    {
    sprite_index = spr_p2_red;
    }
if place_meeting(x,y-2,obj_but_red) 
    {
    sprite_index = spr_p2_red;
    }
    
if place_meeting(x+2,y,obj_touch_red) 
    {
    sprite_index = spr_p2_red;
    }
if place_meeting(x,y+2,obj_touch_red) 
    {
    sprite_index = spr_p2_red;
    }
if place_meeting(x-2,y,obj_touch_red) 
    {
    sprite_index = spr_p2_red;
    }
if place_meeting(x,y-2,obj_touch_red) 
    {
    sprite_index = spr_p2_red;
    }

    
//Blue Collison
if place_meeting(x+2,y,obj_blue) 
    {
    sprite_index = spr_p2_blue;
    }
if place_meeting(x,y+2,obj_blue) 
    {
    sprite_index = spr_p2_blue;
    }
if place_meeting(x-2,y,obj_blue) 
    {
    sprite_index = spr_p2_blue;
    }
if place_meeting(x,y-2,obj_blue) 
    {
    sprite_index = spr_p2_blue;
    }
    
if place_meeting(x+2,y,obj_but_blue) 
    {
    sprite_index = spr_p2_blue;
    }
if place_meeting(x,y+2,obj_but_blue) 
    {
    sprite_index = spr_p2_blue;
    }
if place_meeting(x-2,y,obj_but_blue) 
    {
    sprite_index = spr_p2_blue;
    }
if place_meeting(x,y-2,obj_but_blue) 
    {
    sprite_index = spr_p2_blue;
    }
    
if place_meeting(x+2,y,obj_touch_blue) 
    {
    sprite_index = spr_p2_blue;
    }
if place_meeting(x,y+2,obj_touch_blue) 
    {
    sprite_index = spr_p2_blue;
    }
if place_meeting(x-2,y,obj_touch_blue) 
    {
    sprite_index = spr_p2_blue;
    }
if place_meeting(x,y-2,obj_touch_blue) 
    {
    sprite_index = spr_p2_blue;
    }
    
//Orange Collison
if place_meeting(x+2,y,obj_orange) 
    {
    sprite_index = spr_p2_orange;
    }
if place_meeting(x,y+2,obj_orange) 
    {
    sprite_index = spr_p2_orange;
    }
if place_meeting(x-2,y,obj_orange) 
    {
    sprite_index = spr_p2_orange;
    }
if place_meeting(x,y-2,obj_orange) 
    {
    sprite_index = spr_p2_orange;
    }
    
if place_meeting(x+2,y,obj_but_orange) 
    {
    sprite_index = spr_p2_orange;
    }
if place_meeting(x,y+2,obj_but_orange) 
    {
    sprite_index = spr_p2_orange;
    }
if place_meeting(x-2,y,obj_but_orange) 
    {
    sprite_index = spr_p2_orange;
    }
if place_meeting(x,y-2,obj_but_orange) 
    {
    sprite_index = spr_p2_orange;
    }

//Yellow Collison
if place_meeting(x+2,y,obj_yellow) 
    {
    sprite_index = spr_p2_yellow;
    }
if place_meeting(x,y+2,obj_yellow) 
    {
    sprite_index = spr_p2_yellow;
    }
if place_meeting(x-2,y,obj_yellow) 
    {
    sprite_index = spr_p2_yellow;
    }
if place_meeting(x,y-2,obj_yellow) 
    {
    sprite_index = spr_p2_yellow;
    }
    
if place_meeting(x+2,y,obj_but_yellow) 
    {
    sprite_index = spr_p2_yellow;
    }
if place_meeting(x,y+2,obj_but_yellow) 
    {
    sprite_index = spr_p2_yellow;
    }
if place_meeting(x-2,y,obj_but_yellow) 
    {
    sprite_index = spr_p2_yellow;
    }
if place_meeting(x,y-2,obj_but_yellow) 
    {
    sprite_index = spr_p2_yellow;
    }
    
//LGreen Collison
if place_meeting(x+2,y,obj_lgreen) 
    {
    sprite_index = spr_p2_lgreen;
    }
if place_meeting(x,y+2,obj_lgreen) 
    {
    sprite_index = spr_p2_lgreen;
    }
if place_meeting(x-2,y,obj_lgreen) 
    {
    sprite_index = spr_p2_lgreen;
    }
if place_meeting(x,y-2,obj_lgreen) 
    {
    sprite_index = spr_p2_lgreen;
    }

if place_meeting(x+2,y,obj_but_lgreen) 
    {
    sprite_index = spr_p2_lgreen;
    }
if place_meeting(x,y+2,obj_but_lgreen) 
    {
    sprite_index = spr_p2_lgreen;
    }
if place_meeting(x-2,y,obj_but_lgreen) 
    {
    sprite_index = spr_p2_lgreen;
    }
if place_meeting(x,y-2,obj_but_lgreen) 
    {
    sprite_index = spr_p2_lgreen;
    }
//Turq Collison
if place_meeting(x+2,y,obj_turq) 
    {
    sprite_index = spr_p2_turq;
    }
if place_meeting(x,y+2,obj_turq) 
    {
    sprite_index = spr_p2_turq;
    }
if place_meeting(x-2,y,obj_turq) 
    {
    sprite_index = spr_p2_turq;
    }
if place_meeting(x,y-2,obj_turq) 
    {
    sprite_index = spr_p2_turq;
    }
    
if place_meeting(x+2,y,obj_but_turq) 
    {
    sprite_index = spr_p2_turq;
    }
if place_meeting(x,y+2,obj_but_turq) 
    {
    sprite_index = spr_p2_turq;
    }
if place_meeting(x-2,y,obj_but_turq) 
    {
    sprite_index = spr_p2_turq;
    }
if place_meeting(x,y-2,obj_but_turq) 
    {
    sprite_index = spr_p2_turq;
    }
    
//Purple Collison
if place_meeting(x+2,y,obj_purple) 
    {
    sprite_index = spr_p2_purple;
    }
if place_meeting(x,y+2,obj_purple) 
    {
    sprite_index = spr_p2_purple;
    }
if place_meeting(x-2,y,obj_purple) 
    {
    sprite_index = spr_p2_purple;
    }
if place_meeting(x,y-2,obj_purple) 
    {
    sprite_index = spr_p2_purple;
    }
    
if place_meeting(x+2,y,obj_but_purple) 
    {
    sprite_index = spr_p2_purple;
    }
if place_meeting(x,y+2,obj_but_purple) 
    {
    sprite_index = spr_p2_purple;
    }
if place_meeting(x-2,y,obj_but_purple) 
    {
    sprite_index = spr_p2_purple;
    }
if place_meeting(x,y-2,obj_but_purple) 
    {
    sprite_index = spr_p2_purple;
    }

///Command Input

if keyboard_check(vk_pagedown)
    {
    if instance_exists(obj_checkpoint2)
        {
        obj_player2.x = obj_checkpoint2.x
        obj_player2.y = obj_checkpoint2.y
        sprite_index = spr_p2_norm
        jumpspeed = 3.5
        movespeed = 2
        
        if instance_exists(obj_player1)
        {
        if instance_exists(obj_checkpoint1)
            {
            obj_player1.x = obj_checkpoint1.x
            obj_player1.y = obj_checkpoint1.y
                with obj_player1
                {
                jumpspeed = 3.5
                movespeed = 2
                sprite_index = spr_p1_norm
                }
            }
        else
            {
                with obj_player1
                    {
                    obj_player1.x = startx
                    obj_player1.y = starty
                    jumpspeed = 3.5
                    movespeed = 2
                    sprite_index = spr_p1_norm
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
    
if keyboard_check_released(vk_pageup)
    {
    if global.check2 = 0
        {
        instance_create(x,y,obj_checkpoint2)
        global.check2 = 1
        }
    audio_play_sound(snd_select, 10, false)
    }
    
if keyboard_check(vk_insert)
    {
    sprite_index = spr_p2_norm
    audio_play_sound(snd_select, 10, false)
    }
    
//if keyboard_check_released(ord("P"))
  //  {
    //global.pers = !global.pers
    //audio_play_sound(snd_select, 10, false)
    //}
    
if keyboard_check_released(vk_delete)
    {
    global.corrosive2 = !global.corrosive2
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

