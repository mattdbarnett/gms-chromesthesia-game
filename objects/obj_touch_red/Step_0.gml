/// @description Singleplayer

if touch = false
    {
        if place_meeting(x+2,y,obj_player) 
        {
        sprite_index = spr_but_red;
        alarm[0] = 60
        audio_play_sound(snd_red, 10, false)
        but = true
        touch = true
        global.redfrequency = true
        }
    if place_meeting(x,y+2,obj_player) 
        {
        sprite_index = spr_but_red;
        alarm[0] = 60
        audio_play_sound(snd_red, 10, false)
        but = true
        touch = true
        global.redfrequency = true
        }
    if place_meeting(x-2,y,obj_player) 
        {
        sprite_index = spr_but_red;
        alarm[0] = 60
        audio_play_sound(snd_red, 10, false)
        but = true
        touch = true
        global.redfrequency = true
        }
    if place_meeting(x,y-2,obj_player) 
        {
        sprite_index = spr_but_red;
        alarm[0] = 60
        audio_play_sound(snd_red, 10, false)
        but = true
        touch = true   
        global.redfrequency = true     
        }
    }

///Multiplayer

//Player 1

if touch = false
    {
        if place_meeting(x+2,y,obj_player1) 
        {
        sprite_index = spr_but_red;
        alarm[0] = 60
        audio_play_sound(snd_red, 10, false)
        but = true
        touch = true
        global.redfrequency = true
        }
    if place_meeting(x,y+2,obj_player1) 
        {
        sprite_index = spr_but_red;
        alarm[0] = 60
        audio_play_sound(snd_red, 10, false)
        but = true
        touch = true
        global.redfrequency = true
        }
    if place_meeting(x-2,y,obj_player1) 
        {
        sprite_index = spr_but_red;
        alarm[0] = 60
        audio_play_sound(snd_red, 10, false)
        but = true
        touch = true
        global.redfrequency = true
        }
    if place_meeting(x,y-2,obj_player1) 
        {
        sprite_index = spr_but_red;
        alarm[0] = 60
        audio_play_sound(snd_red, 10, false)
        but = true
        touch = true   
        global.redfrequency = true     
        }
    }
    
//Player 2

if touch = false
    {
        if place_meeting(x+2,y,obj_player2) 
        {
        sprite_index = spr_but_red;
        alarm[0] = 60
        audio_play_sound(snd_red, 10, false)
        but = true
        touch = true
        global.redfrequency = true
        }
    if place_meeting(x,y+2,obj_player2) 
        {
        sprite_index = spr_but_red;
        alarm[0] = 60
        audio_play_sound(snd_red, 10, false)
        but = true
        touch = true
        global.redfrequency = true
        }
    if place_meeting(x-2,y,obj_player2) 
        {
        sprite_index = spr_but_red;
        alarm[0] = 60
        audio_play_sound(snd_red, 10, false)
        but = true
        touch = true
        global.redfrequency = true
        }
    if place_meeting(x,y-2,obj_player2) 
        {
        sprite_index = spr_but_red;
        alarm[0] = 60
        audio_play_sound(snd_red, 10, false)
        but = true
        touch = true   
        global.redfrequency = true     
        }
    }

