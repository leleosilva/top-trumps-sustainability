extends Label

var count = 2 setget _set_count

func _ready():
	set_text(str(2))

func _set_count(value):
	if value < 2:
		value = 2
	elif value > 4:
		value = 4
		
	count = value
	set_text(str(count))

func increment():
	set('count', count+1)
	
func decrement():
	set('count', count-1)

func _on_IncreasePlayersButton_pressed():
	increment()

func _on_DecreasePlayersButton_pressed():
	decrement()
