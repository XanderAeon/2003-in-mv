function resize(sprite, size, name) {
	var spritesize = new vec2(sprite_get_width(sprite)*size, sprite_get_height(sprite)*size);
	var spriteoffset = new vec2(sprite_get_xoffset(sprite)*size, sprite_get_yoffset(sprite)*size);
	log(spritesize);
	var surf = surface_create(spritesize.x, spritesize.y);
	surface_set_target(surf);
	draw_sprite_ext(sprite, 0, spriteoffset.x, spriteoffset.y, size, size, 0, c_white, 1);
	surface_reset_target();
	surface_save(surf, newpath+name);
	surface_free(surf);
	//program_directory
}