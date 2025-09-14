extends Node

const MOD_DIR = "PapiLeem-EXPPercentageDisplay/"
const LOG_NAME = "PapiLeem-EXPPercentageDisplay"

var dir = ""
var ext_dir = ""

func _init(modLoader = ModLoader):
	ModLoaderLog.info("Init", LOG_NAME)
	dir = ModLoaderMod.get_unpacked_dir() + MOD_DIR
	ext_dir = dir + "extensions/ui"
	
	# Add extensions
	ModLoaderMod.install_script_extension(ext_dir + "/hud/player_ui_elements.gd")
