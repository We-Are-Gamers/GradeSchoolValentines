randomise();

global.special_color = shader_get_uniform(sdr_color, "u_vSpecialColor");
global.correct = 0;
global.incorrect = 0;

play = false;
columns = ds_list_create();
for(var i = 0; i < 4; ++i) {
	column = ds_list_create();
	for(var j = 0; j < 4; ++j) {
		var obstacle = instance_create_layer(500 + 150 * i, -32 - 200 * j, "Instances", obj_obstacle);
		with(obstacle) {
			type = i;
		}
		ds_list_add(column, obstacle);
	}
	ds_list_add(columns, column);
}
