function resize(sprite, size, name, prefix="!") {
	var spritesize = new vec2(sprite_get_width(sprite)*size, sprite_get_height(sprite)*size);
	var spriteoffset = new vec2(sprite_get_xoffset(sprite)*size, sprite_get_yoffset(sprite)*size);
	var surf = surface_create(spritesize.x, spritesize.y);
	surface_set_target(surf);
	draw_sprite(sprite, 0, spriteoffset.x, spriteoffset.y);
	surface_reset_target();
	surface_save(surf, newpath+prefix+name);
	//program_directory
}