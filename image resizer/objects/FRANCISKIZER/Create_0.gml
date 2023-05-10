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
	new stat("User", "", function() {
		val = environment_get_variable("USERNAME");
	}),
	
	new stat("Total checksums", "", function() {
		val = FRANCISKIZER.converted;
	}),
	new stat("Images watching", "", function() {
		val = FRANCISKIZER.watching;
	}),
	new stat("Processing", "", function() {
		val = FRANCISKIZER.processing;
	}),
	new stat("Input path", "", function() {
		val = FRANCISKIZER.oldpath;
	}),
	new stat("Output path", "", function() {
		val = FRANCISKIZER.newpath;
	}),
	new stat("Wisdom", "...", function() {
		c
		if ncm(6 sec) {
			val = speech(true);
		}
	}),
	new stat("Random", "", function() {
		c
		if ncm(30) {
			val = irandom(9999999999);
			if !val {
				array_insert(thelog, 0, "Wow! Random was zero! What are the odds!?");
			}
		}
	}),
]

converted = 0;
watching = 0;
processing = false;
prefix = "!";
oldpath = program_directory+"img\\tilesets_real\\";
newpath = program_directory+"img\\tilesets\\";
count = 0;
iterations = 0;
files = [];
hashes = {};
thelog = [];

array_insert(thelog, 0, "Initialized");