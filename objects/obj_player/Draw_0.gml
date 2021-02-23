shader_set(sdr_color);
shader_set_uniform_f(global.special_color, r, g, b);
draw_self();
shader_reset();
