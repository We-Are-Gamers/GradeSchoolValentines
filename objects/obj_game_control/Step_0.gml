if(play) {
	for(var i = 0; i < 4; ++i) {
		var current_column = ds_list_find_value(columns, i);
		var column_size = ds_list_size(current_column);
		for(var j = 0; j < ds_list_size(current_column); ++j) {
			var instance = ds_list_find_value(ds_list_find_value(columns, i), j);
			if(!instance_exists(instance)) {
				ds_list_delete(current_column, j);
			}
		}
		var needed_obstacles = 4 - ds_list_size(ds_list_find_value(columns, i));
		for(var j = 0; j < needed_obstacles; ++j) {
			var last_y = 0;
			if(column_size > 0 && column_size < 4) {
				//last_y = ds_list_find_value(current_column, column_size - 1).y;
			}
			var obstacle = instance_create_layer(500 + 100 * i, last_y - 200 * j, "Instances", obj_obstacle);
			ds_list_add(
				current_column, 
				obstacle
			);
		}
	}
}