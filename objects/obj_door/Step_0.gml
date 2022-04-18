if place_meeting(x,y,obj_player)
    {
    global.finish = room
    if global.finish = rm_r_2_extra
        {
        global.finish = rm_r_2
        }
    room_goto(rm_finish);
    }
    
if place_meeting(x,y,obj_player1)
    {
    global.multiplayer = global.multiplayer + 1
    with obj_player1
    {
    instance_destroy();
    }
    }
    
if place_meeting(x,y,obj_player2)
    {
    global.multiplayer = global.multiplayer + 1
    with obj_player2
    {
    instance_destroy();
    }
    }
    
if global.multiplayer = 2
    {
    global.finish = room
    room_goto(rm_finish);
    }


