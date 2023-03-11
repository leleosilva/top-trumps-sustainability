extends MarginContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalSettings.toggle_fullscreen(Save.game_data.fullscreen_on)


func _on_StartButton_pressed():
	if get_tree().change_scene("res://src/gui/StartGameMenu.tscn") != OK:
		print("An unexpected error occured when trying to switch to the start menu.")


func _on_OptionsButton_pressed():
	if get_tree().change_scene("res://src/gui/SettingsMenu.tscn") != OK:
		print("An unexpected error occured when trying to pause the game.")


func _on_ExitButton_pressed():
	get_tree().quit()
