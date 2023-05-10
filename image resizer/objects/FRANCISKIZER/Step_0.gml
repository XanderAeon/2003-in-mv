iterate stats to stats[i].step();
//files = [];
//log(files);
if !array_length(files) {
	//log("hi");
	processing = "none";
	var file_name = file_find_first(oldpath+"*.png", 0);
	var toldyou = false;
	while file_name != "" {
		//log(file_name);
		if get_value(hashes, file_name) != sha1_file(oldpath+file_name) {
			if !toldyou {
				array_insert(thelog, 0, "New file detected, beginning checksum");
				toldyou = true;
			}
			array_push(files, file_name);
			
			watching = array_length(files);
			hashes[$file_name] = sha1_file(oldpath+file_name);
			array_insert(thelog, 0, "Queuing " + file_name);
		}// else log("already done");
		file_name = file_find_next();
	}
	if array_length(files) {
		array_insert(thelog, 0, "Queue complete, beginning conversion");
	}
} else {
	c
	if ncm(20) {
		var dude = array_pop(files);
		var friend = sprite_add(oldpath+dude, 0, false, false, 0, 0);
		resize(friend, 3, dude);
		sprite_delete(friend);
		converted++;
		processing = dude;
		array_insert(thelog, 0, "Converted " + dude);
	}
	if !array_length(files) {
		array_insert(thelog, 0, "Conversion complete");
	}
}
while array_length(thelog) > 15 {
	array_delete(thelog, 12, 1);
}

if keyboard_check(vk_control) && keyboard_check_pressed(ord("C")) {
	clipboard_set_text(oldpath);
}

/*iterate files to {
	
	//if string_copy(files[i], 1, string_length(prefix)) == prefix continue;
	
	
}*/