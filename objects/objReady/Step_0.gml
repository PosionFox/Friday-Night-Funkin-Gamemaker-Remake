
if (start)
{
	if (global.songData[$ "player2"] == "gold")
	{
		image_alpha -= 0.02;
		image_speed = (global.bpm / 60) / 30 * (global.deltaMultiplier / 2.5);
	}
	else
	{
		image_alpha -= 0.04;
		image_speed = (global.bpm / 60) / 30 * global.deltaMultiplier;
	}
}

if (image_index >= 1) && (image_index < 1.2)
{
	image_alpha = 1;
	if !(audio_is_playing(snd2)) and !(global.songData[$ "player2"] == "gold") audio_play_sound(snd2, 10, false);
}
if (image_index >= 2) && (image_index < 2.2)
{
	image_alpha = 1;
	if !(audio_is_playing(snd1)) and !(global.songData[$ "player2"] == "gold") audio_play_sound(snd1, 10, false);
}
if (image_index >= 3) && (image_index < 3.2)
{
	image_alpha = 1;
	if !(audio_is_playing(sndGo)) and !(global.songData[$ "player2"] == "gold") audio_play_sound(sndGo, 10, false);
}
if (image_index >= 4)
{
	if (global.audioSyncGroup)
	{
		audio_start_sync_group(global.musicSync);
	}
	else
	{
		global.songId = audio_play_sound(global.song, 100, false);
		global.voicesId = audio_play_sound(global.voices, 100, false);
	}
	global.songIsPlaying = true;
	with (objNote)
	{
		noteSpeedAdd = (0.01*noteRangeDetermine)*global.accelnotes;
		curNoteSpeed = global.noteSpeed + noteSpeedAdd;
	}
	objBoyfriend.bpmTimer = 0;
	objGirlfriend.image_index = 0;
	objEnemy.start();
	instance_destroy();
}