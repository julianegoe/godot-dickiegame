extends CanvasLayer

@onready var inventory = $Inventory

func _input(event):
	if event.is_action_pressed("open inventory"):
		if inventory.is_open:
			inventory.close()
		else:
			inventory.open()

