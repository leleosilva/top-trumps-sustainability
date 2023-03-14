extends MarginContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalSettings.toggle_fullscreen(Save.game_data.fullscreen_on)


func _on_StartButton_pressed():
	SceneTransition.change_scene("res://src/gui/StartGameMenu.tscn")
	

func _on_OptionsButton_pressed():
	SceneTransition.change_scene("res://src/gui/SettingsMenu.tscn")



func _on_ExitButton_pressed():
	get_tree().quit()
