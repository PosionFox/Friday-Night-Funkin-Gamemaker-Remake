
function freeplay_songs()
{
	song[0] = "tutorial";
	
	song[1] = "bopeebo";
	song[2] = "fresh";
	song[3] = "dad_battle";
	
	song[4] = "spookeez";
	song[5] = "south";
	song[6] = "monster";
	
	song[7] = "pico";
	song[8] = "philly";
	song[9] = "blammed";
	
	song[10] = "satin_panties";
	song[11] = "high";
	song[12] = "milf";
	
	song[13] = "cocoa";
	song[14] = "eggnog";
	song[15] = "winter_horrorland";
	
	song[16] = "senpai";
	song[17] = "roses";
	song[18] = "thorns";
	
	song[19] = "ugh";
	song[20] = "guns";
	song[21] = "stress";
}

function load_freeplay()
{
	var _data;
	var _buff = buffer_load("data/freeplayList.json");
	var _string = buffer_read(_buff, buffer_string);
	buffer_delete(_buff);
	_data = json_parse(_string);
	
	var _s;
	var _sorted;
	var _len = array_length(_data) - 1;
	for (var i = _len; i >= 0; i--)
	{
		_s = abs(i - _len);
		_sorted[_s] = _data[i]; 
	}
	return _sorted;
	
	//if !(special) freeplay_songs();
	//else freeplay_songs_special();
	
	//var leng = array_length(song) - 1;
	//for (var i = leng; i >= 0; --i) {
	//	// order the songs properly
	//	songO = abs(i - leng);
	//	songs[songO] = song[i]
		
	//	if (global.customFreeplay) {
	//		// get the selected songs directory
	//		var directory = songs[songO] + "/" + songs[songO] + "_Hard.ini";
	//		if (global.useProgramDir) directory = working_directory +"\\Songs\\" + directory;
		
	//		// load the selected songs data
	//		ini_open(directory);
	//		enemySong[songO] = ini_read_real("Song", "Enemy", global.enemy);
	//		ini_close();
	//	}
	//}
}

function freeplay_songs_special(){
	song[0] = "test";
	song[1] = "lofight";
	song[2] = "overhead";
	song[3] = "ballistic";
	song[4] = "codist_says_things";
	song[5] = "bopeedist";
	song[6] = "cookies";
}

function freeplay_songs_bside(){
	song[0] = "bopeebo_bside";
	song[1] = "fresh_bside";
	song[2] = "dadbattle_bside";
}
