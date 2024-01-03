extends Control

func set_text(text: String):
	$Timer.start()
	$HBoxContainer/Label.show()
	$HBoxContainer/Label.text = text

func _ready():
	$HBoxContainer/Label.hide()
	
func _on_timer_timeout():
	$HBoxContainer/Label.text = ""
	$HBoxContainer/Label.hide()
