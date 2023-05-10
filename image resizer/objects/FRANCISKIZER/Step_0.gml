iterate stats to stats[i].step();

//files = [];
if !array_length[files] {
	var file_name = file_find_first(oldpath+"*.png", 0);
	while file_name != "" {
		array_push(files, file_name);
		file_name = file_find_next();
		watching = array_length(files);
	}
}

iterate files to {
	
	//if string_copy(files[i], 1, string_length(prefix)) == prefix continue;
	var friend = sprite_add(files[i], 0, false, false, 0, 0);
	resize(friend, 3, file_name, prefix);
	sprite_delete(friend);
}