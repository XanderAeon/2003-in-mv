function stat(name_, val_, step_) constructor {
	name = name_;
	val = val_;
	step = munction(step_);
	count = 0;
	iterations = 0;
}

stats = [
	new stat("Uptime", "", function() {
		c
		val = string_time(count/room_speed);
	}),
	new stat("Random", "", function() {
		c
		if ncm(30) {
			val = irandom(9999999999);
		}
	}),
	new stat("User", "", function() {
		val = environment_get_variable("USERNAME");
	}),
	new stat("Wisdom", "", function() {
		c
		if ncm(6 sec) {
			val = speech(true);
		}
	}),
	new stat("Images converted", "", function() {
		val = FRANCISKIZER.converted;
	}),
	new stat("Images watching", "", function() {
		val = FRANCISKIZER.watching;
	}),
	new stat("Processing", "", function() {
		val = FRANCISKIZER.processing ? "true" : "false";
	}),
	new stat("", "", function() {
		
	}),
]

converted = 0;
watching = 0;
processing = false;
prefix = "!";
oldpath = working_directory+"\img\tilesets_real";
newpath = working_directory+"\img\tilesets";