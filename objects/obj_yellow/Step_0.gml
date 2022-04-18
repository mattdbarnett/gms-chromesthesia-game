
if touch = false
    {
        if place_meeting(x+2,y,obj_player) 
        {
        sprite_index = spr_yellow;
        alarm[0] = 30
        audio_play_sound(snd_yellow, 10, false)   
        touch = true
        if global.corrosive = true
            {
            alarm[1] = 30
            }
        }
    if place_meeting(x,y+2,obj_player) 
        {
        sprite_index = spr_yellow;
        alarm[0] = 30
        audio_play_sound(snd_yellow, 10, false)
        touch = true
        if global.corrosive = true
            {
            alarm[1] = 30
            }
        }
    if place_meeting(x-2,y,obj_player) 
        {
        sprite_index = spr_yellow;
        alarm[0] = 30
        audio_play_sound(snd_yellow, 10, false)
        touch = true
        if global.corrosive = true
            {
            alarm[1] = 30
            }
        }
    if place_meeting(x,y-2,obj_player) 
        {
        sprite_index = spr_yellow;
        alarm[0] = 30
        audio_play_sound(snd_yellow, 10, false)        
        touch = true
        if global.corrosive = true
            {
            alarm[1] = 30
            }
        }
    }


///Multiplayer Collisions

//Player 1
if touch = false
    {
        if place_meeting(x+2,y,obj_player1) 
        {
        sprite_index = spr_yellow;
        alarm[0] = 30
        audio_play_sound(snd_yellow, 10, false)   
        touch = true
        if global.corrosive1 = true
            {
            alarm[1] = 30
            }
        }
    if place_meeting(x,y+2,obj_player1) 
        {
        sprite_index = spr_yellow;
        alarm[0] = 30
        audio_play_sound(snd_yellow, 10, false)
        touch = true
        if global.corrosive1 = true
            {
            alarm[1] = 30
            }
        }
    if place_meeting(x-2,y,obj_player1) 
        {
        sprite_index = spr_yellow;
        alarm[0] = 30
        audio_play_sound(snd_yellow, 10, false)
        touch = true
        if global.corrosive1 = true
            {
            alarm[1] = 30
            }
        }
    if place_meeting(x,y-2,obj_player1) 
        {
        sprite_index = spr_yellow;
        alarm[0] = 30
        audio_play_sound(snd_yellow, 10, false)        
        touch = true
        if global.corrosive1 = true
            {
            alarm[1] = 30
            }
        }
    }
    
//Player 2

if touch = false
    {
        if place_meeting(x+2,y,obj_player2) 
        {
        sprite_index = spr_yellow;
        alarm[0] = 30
        audio_play_sound(snd_yellow, 10, false)   
        touch = true
        if global.corrosive2 = true
            {
            alarm[1] = 30
            }
        }
    if place_meeting(x,y+2,obj_player2) 
        {
        sprite_index = spr_yellow;
        alarm[0] = 30
        audio_play_sound(snd_yellow, 10, false)
        touch = true
        if global.corrosive2 = true
            {
            alarm[1] = 30
            }
        }
    if place_meeting(x-2,y,obj_player2) 
        {
        sprite_index = spr_yellow;
        alarm[0] = 30
        audio_play_sound(snd_yellow, 10, false)
        touch = true
        if global.corrosive2 = true
            {
            alarm[1] = 30
            }
        }
    if place_meeting(x,y-2,obj_player2) 
        {
        sprite_index = spr_yellow;
        alarm[0] = 30
        audio_play_sound(snd_yellow, 10, false)        
        touch = true
        if global.corrosive2 = true
            {
            alarm[1] = 30
            }
        }
    }
    

