shader_set(sdr_color);
shader_set_uniform_f(global.special_color, 1, 0, 0);
draw_self();
shader_reset();