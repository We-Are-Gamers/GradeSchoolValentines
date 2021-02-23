shader_set(sdr_color);
shader_set_uniform_f(global.special_color, 0, 1, 0);
draw_self();
shader_reset();
