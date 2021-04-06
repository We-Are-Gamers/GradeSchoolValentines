if(play) {
	switch(type) {
		case 0:
			y += _speed / 2;
			break;
		case 1:
			y += _speed;
			break;
		case 2:
			y += _speed;
			break;
		case 3:
			y += _speed * 3;
			break;
		default:
			break;
	}
}
if(y > window_get_height() + sprite_height / 2) {
	y = 0 - sprite_height / 2;
}