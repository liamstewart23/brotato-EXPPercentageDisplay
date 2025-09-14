extends "res://ui/hud/player_ui_elements.gd"

var percent := 0.0

func _init():
	RunData.connect("xp_added", self, "xp_added")

func xp_added(current_xp, max_xp, player_index):
	if max_xp > 0:
		percent = float(current_xp) * 100.0 / float(max_xp)
	else:
		percent = 0.0
	update_level_label()
	
func update_level_label() -> void:
	level_label.text = "LV.%d (%.2f%%)" % [RunData.get_player_level(player_index), percent]
