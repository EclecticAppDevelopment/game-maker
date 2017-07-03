///Draw the grid - COLOURS
draw_set_alpha(0.25);

// "grid_y" loop
for (var a = 0; a < global.grid_y_size; a++){

    // "grid_x" loop
    for (var b = 0; b < global.grid_x_size; b++){
        
        //Set default colour (not used)
        draw_set_colour(c_purple);
        var grid_info = scr_check_grid(a,b);
                
        //Check if occupied (without hover selection)
        if (grid_info == GRID_PLAYER_BUILD){
            // Available to build - green
            draw_set_colour(c_green);
            
        }else if (grid_info == GRID_OCCUPIED){
            // Occupied - grey
            draw_set_colour(c_dkgray);
            
        }else{
            // Unavailable - red
            draw_set_colour(c_red);
        }
        
        //Check if selected
        if (global.selected != noone){
            
            //Do calculation on the cell which should be highlighted
            var grid_rows = global.grid_x_size;
            var grid_cols = global.grid_y_size;
            var grid_length = global.grid_cell_size;
            var max_x = (grid_rows * grid_length) - 1;
            var max_y = (grid_cols * grid_length) - 1;    
            var grid_x = floor( max(0, min( max_x, mouse_x) ) / grid_length);
            var grid_y = floor( max(0, min( max_y, mouse_y) ) / grid_length);

            // Check if the current grid square is hovered        
            if ( (grid_x == a) && (grid_y == b) ){

                //Check if the current grid square is OCCUPIED (and is hovered)
                if (grid_info == GRID_PLAYER_BUILD){
                    // Not occupied - lime
                    draw_set_colour(c_lime);
                    
                }else if (grid_info == GRID_OCCUPIED){
                    // Occupied - dark gray
                    draw_set_colour(c_dkgray);
                    
                }else{
                    // Unavailable - maroon
                    draw_set_colour(c_maroon);
                }
            }       
        }
        draw_rectangle(a*75,b*75,(a+1)*75,(b+1)*75,false);
    }
}

draw_set_alpha(1);
