extends Label

func _ready():
	Global.number_of_players = 2
	set_text(str(Global.number_of_players))

func change_number_of_players(value):
	if value < 2:
		value = 2
	elif value > 4:
		value = 4
		
	Global.number_of_players = value
	set_text(str(Global.number_of_players))

func increment():
	change_number_of_players(Global.number_of_players + 1)
	
func decrement():
	change_number_of_players(Global.number_of_players - 1)

func _on_IncreasePlayersButton_pressed():
	increment()

func _on_DecreasePlayersButton_pressed():
	decrement()
