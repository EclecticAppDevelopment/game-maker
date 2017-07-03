///scr_turn_enemy_deploy()
var ap = obj_enemy_info.ap;

// ------------------------------
// Top-left-first build strategy
// ------------------------------

// Y loop
for (var a = 0; a < global.grid_y_size; a++){

    // X loop
    for (var b = 0; b < global.grid_x_size; b++){
        
        // If this square is buildable
        if (scr_check_grid(a,b) == GRID_ENEMY_BUILD){
        
            // If the enemy has the AP to build (best first)
            if (ap >= obj_enemy_a.ap_cost){

                // Add to grid
                scr_add_to_grid(a,b,obj_enemy_a);
                
            }            
        }
    }
}
