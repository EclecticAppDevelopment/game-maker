///scr_check_grid(x,y) RETURNS: false=empty, true=occupied
var check_x = argument0;
var check_y = argument1;

/*if (global.grid_array[check_x,check_y] == 0){
    return false;
}else{
    return true;
}*/

switch (global.grid_array[check_x,check_y]){
    case GRID_UNAVAILABLE:
        // Unoccupied but not buildable
        return GRID_UNAVAILABLE;
        break;
    case GRID_ENEMY_BUILD:
        // Available to build for enemy
        return GRID_ENEMY_BUILD;
        break;
    case GRID_PLAYER_BUILD:
        // Available to build for player
        return GRID_PLAYER_BUILD;
        break;
    default:
        // Occupied - set this grid cell to the object?
        return GRID_OCCUPIED;
        break;
}
