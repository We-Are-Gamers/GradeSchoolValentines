if(recipient > -1) {
	if(recipient == other.townie) {
		global.correct++;
	}
	else {
		global.incorrect++;
	}
	recipient = -1;
	r = 0;
	g = 0;
	b = 0;
	scr_create_package();
}
