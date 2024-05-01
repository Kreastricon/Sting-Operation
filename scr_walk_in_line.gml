///scr_walk_in_line(wall,speed)

//This code makes the police officer walk aligned to the walls of the maze.

var wall=argument0
var spd= argument1

direction=scr_round_direction()

var xx,yy;
xx=lengthdir_x(spd+1,direction)
yy=lengthdir_y(spd+1,direction)

//If there is a wall in the way, turn left or right or turn around.
if place_meeting(x+xx,y+yy,wall)
    {
    x=floor(x)
    y=floor(y)
    direction+=scr_left_right_back_2(direction)
    }
    
//Line up with the grid.
if direction=0 or direction=180
    {
    y+=scr_grid_aligned_2(y,32,16,1)
    }
    
if direction=90 or direction=270
    {
    x+=scr_grid_aligned_2(x,32,16,1)
    }

