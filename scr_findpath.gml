///scr_findpath()

///scr_findpath(startx,starty,endx,endy)

//Requires global variable MAPGRID and Pos
var startx, starty, endx, endy;
startx=argument0
starty=argument1
endx=argument2
endy=argument3

mp_grid_clear_all(global.Grid)

//Delete preexisting path
var temp_path=path_add()
mp_grid_add_instances(global.Grid,obj_wall,false)
mp_grid_add_instances(global.Grid,obj_window,false)

//var old_path=Current_Path

if mp_grid_path(global.Grid,temp_path,startx,starty,endx,endy,false)
    {
    /*
    //Shorten Path.
    var n=0
    var xx, yy, xx2, yy2;
    repeat(path_get_number(temp_path))
        {
        var xx, yy, xx2, yy2;
        xx=path_get_point_x(temp_path,n)
        yy=path_get_point_y(temp_path,n)
        xx2=path_get_point_x(temp_path,n+2)
        yy2=path_get_point_y(temp_path,n+2)
        //Check the path can be straightened out...
        if collision_line(xx,yy,xx2,yy2,obj_nowalk,false,true)>0 
            { //If there is not a straight path to the point after...
            n+=1
            }
            else 
            {//The path will be straightened out.
            path_delete_point(temp_path,n+1)
            
            /*
            After the path has been straightened out, the next node is 
            checked to see if it is the last node in the path, and if it 
            is, the loop ends, because there is no need to check for more
            nodes.
            
            if n+1=path_get_number(temp_path)-1
                { 
                break;
                }
            }
        }
    */
    path_assign(Current_Path,temp_path)
    path_delete(temp_path)
    return true
    }else{
    //If no path exists, then the action has to be cancelled.
    //path_assign(Current_Path,old_path)
    //path_delete(old_path)
    return false
    }


