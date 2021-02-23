if(y < window_get_height() - sprite_height / 2) {
	y += 5;
}
else {
	y = window_get_height() - sprite_height / 2;
}
moving = true;