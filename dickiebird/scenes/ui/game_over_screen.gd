extends Control

signal restart

func play_again():
	restart.emit()
	
func _on_button_pressed():
	play_again()
