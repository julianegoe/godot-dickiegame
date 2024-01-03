class_name PortalsResource
extends Resource

@export var name: String
@export var look_at_text: String
@export var hover_text: String
@export var open_text: String
@export var open_to: String
@export var is_open: bool = false

func open(newText: String):
	is_open = true
	look_at_text = newText
