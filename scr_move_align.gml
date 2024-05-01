///scr_move_align()

//This limits the direction to four and aligns to a grid.

direction=scr_round_direction()

if direction=0 or direction=180
    {
    y+=scr_grid_aligned_2(y,32,16,1)
    }
        
if direction=90 or direction=270
    {
    x+=scr_grid_aligned_2(x,32,16,1)
    }

