///scr_stayOutOfWall()

/*

This code helps npc's stay out of walls.

//While it is in a wall, after a set amount of steps (default 64) 
it will try to stay out of the wall.

//Returns true if it stayed out of the wall.

*/
var counter=0

var arg;

if argument_count>0
    {
    arg=argument[0]
    }else{
    arg=64
    }

var stayoutofthewall;

if place_meeting(x,y,obj_wall)
    {
    stayoutofthewall=true //If there was a wall, then the object can stay out of it.
    }else{
    exit;
    }

while place_meeting(x,y,obj_wall)
    {
    var n, w, xx, yy;
    n=instance_place(x,y,obj_wall)
    
    //This returns the exact center of the wall.
    xx=n.x-n.sprite_xoffset+n.sprite_width/2
    yy=n.y-n.sprite_yoffset+n.sprite_height/2
    
    w=obj_wall
    
    var sw2,sh2;
    sw2=sprite_width/2;
    sh2=sprite_height/2;
    
    var left,right,up,down;
    if position_meeting(x+sw2+1,y,w)//If the wall is to the right
        {
        left=-1
        }else{
        left=0
        }
    if position_meeting(x-sw2-1,y,w)//If there is a wall to the left...
        {
        right=1
        }else{
        right=0
        }    
    if position_meeting(x,y+sh2+1,w)//If there is a wall below...
        {
        up=-1
        }else{
        up=0
        }
    if position_meeting(x,y-sh2-1,w)//If there is a wall above...
        {
        down=1
        }else{
        down=0
        }
    if sign(left+right)!=0 or sign(up+down)!=0
        {
        x+=left+right
        y+=up+down
        }else{
        var d=point_direction(xx,yy,x,y);
        x+=lengthdir_x(1,d)
        y+=lengthdir_y(1,d)
        }
        
    counter+=1
    //After a designated number of tries, the character will die.
    if counter>arg
        {
        break;
        }
    }
    
if stayoutofthewall=true //If there was a wall,
    {
    if !place_meeting(x,y,obj_wall)
        { //and it is not there anymore...
        return true
        }else{ //But if it is still there...
        return false
        }
    }else{
    return false
    }
