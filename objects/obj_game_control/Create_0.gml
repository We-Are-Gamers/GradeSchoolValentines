randomise();

global.special_color = shader_get_uniform(sdr_color, "u_vSpecialColor");
global.correct = 0;
global.incorrect = 0;

play = false;
columns = ds_list_create();
for(var i = 0; i < 4; ++i) {
	column = ds_list_create();
	ds_list_add(columns, column);
}
