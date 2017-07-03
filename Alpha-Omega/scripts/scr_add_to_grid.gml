///scr_add_to_grid(x,y,obj);
var grid_x = argument0;
var grid_y = argument1;
var grid_obj = argument2;
var room_x = grid_x * global.grid_cell_size;
var room_y = grid_y * global.grid_cell_size;

// Create an instance (handle here rather than separate)
instance_create(room_x, room_y, grid_obj);
// Add to the grid as an object
global.grid_array[grid_x,grid_y] = grid_obj;
// If not on the top row
if (grid_y >= 1){
    // If the cell above is empty (but unavailable) or available for enemies
    if (global.grid_array[grid_x,grid_y-1] == GRID_UNAVAILABLE or global.grid_array[grid_x,grid_y-1] == GRID_ENEMY_BUILD){
        global.grid_array[grid_x,grid_y-1] = GRID_PLAYER_BUILD;    
    }
}
