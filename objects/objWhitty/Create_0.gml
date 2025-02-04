
sprites = {};
sprites.idle = sprWhittyIdle;
sprites.up = sprWhittyUp;
sprites.left = sprWhittyLeft;
sprites.down = sprWhittyDown;
sprites.right = sprWhittyRight;



event_inherited();

texGroup = "tgWhitty";
seq = undefined;

if (global.songData[$ "song"] == "Lo-Fight")
{
	onLoad = function()
	{
		objHUD.hudAlphaTarget = 0;
		objReady.start = false;
		ready = false;
		visible = false;
		layer_set_visible("Girl", false);
		seq = layer_sequence_create("Cutscene", x, y, seqLofightIntro);
		layer_sequence_xscale(seq, 1.6);
		layer_sequence_yscale(seq, 1.6);
	}
}

startLofight = function()
{
	visible = true;
	ready = true;
	layer_set_visible("Girl", true);
	objHUD.hudAlphaTarget = 1;
	objReady.start = true;
}

onPause = function()
{
	if (seq != undefined)
	{
		layer_sequence_pause(seq);
	}
}
onUnpause = function()
{
	if (seq != undefined)
	{
		layer_sequence_play(seq);
	}
}