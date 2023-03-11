extends Node
	
func toggle_fullscreen(toggle):
	OS.window_fullscreen = toggle
	Save.game_data.fullscreen_on = toggle
	Save.save_data()
	
	
func update_master_vol(vol):
	AudioServer.set_bus_volume_db(0, vol)
	Save.game_data.master_vol = vol
	Save.save_data()
	
	
func update_music_vol(vol):
	AudioServer.set_bus_volume_db(1, vol)
	
	
func update_sfx_vol(vol):
	AudioServer.set_bus_volume_db(2, vol)
