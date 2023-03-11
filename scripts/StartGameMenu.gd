extends MarginContainer

func _on_ReturnButton_pressed():
	if get_tree().change_scene("res://scenes/MainMenu.tscn") != OK:
		print("An unexpected error occured when trying to return to the main menu.")
