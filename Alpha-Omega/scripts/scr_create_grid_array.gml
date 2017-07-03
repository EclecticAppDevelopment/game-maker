///Creates an array denoting the battle grid

/// y
for (var a = 0; a < global.grid_y_size; a++){
    
    // x
    for (var b = 0; b < global.grid_x_size; b++){
    
        var unit = GRID_UNAVAILABLE;                               // Unavailable
        if (b == 0) unit = GRID_ENEMY_BUILD;                       // Enemy build square
        if (b == global.grid_x_size - 1) unit = GRID_PLAYER_BUILD; // Player build square
        global.grid_array[a, b] = unit;

    }
}
