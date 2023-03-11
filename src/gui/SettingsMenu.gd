extends MarginContainer

# Video Settings
onready var display_options = $SettingsMenuVBox/CenterSettings/SettingsOrganizer/DisplayMode/DisplayModeOption

# Audio Settings
onready var master_slider = $SettingsMenuVBox/CenterSettings/SettingsOrganizer/MasterVol/MasterSlider
onready var music_slider = $SettingsMenuVBox/CenterSettings/SettingsOrganizer/MusicVol/MusicSlider
onready var sfx_slider = $SettingsMenuVBox/CenterSettings/SettingsOrganizer/SFXVol/SFXSlider

func _ready():
	display_options.select(1 if Save.game_data.fullscreen_on else 0)
	GlobalSettings.toggle_fullscreen(Save.game_data.fullscreen_on)
	
	master_slider.value = Save.game_data.master_vol

func _on_ReturnButton_pressed():
	if get_tree().change_scene("res://src/gui/MainMenu.tscn") != OK:
		print("An unexpected error occured when trying to return to the main menu.")


func _on_MasterSlider_value_changed(value):
	GlobalSettings.update_master_vol(value)
	
	
func _on_DisplayModeOption_item_selected(index):
	GlobalSettings.toggle_fullscreen(true if index == 1 else false)
