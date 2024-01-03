extends Control

signal opened
signal closed

var is_open: bool = false

@export var inventoryResource = preload("res://resources/Collectables/inventory.tres")
@onready var slots = $NinePatchRect/GridContainer.get_children()
		
func _ready():
	position = Vector2(282, 720)
	update()

func open():
	is_open = true
	var tween = create_tween()
	tween.tween_property(self, "position", Vector2(282, 411), 0.5).set_ease(Tween.EASE_IN_OUT)
	opened.emit()

func close():
	is_open = false
	var tween = create_tween()
	tween.tween_property(self, "position", Vector2(282, 720), 0.5).set_ease(Tween.EASE_IN_OUT)
	closed.emit()
			

func update():
	if inventoryResource.collectables.size() == 0:
		for index in slots.size():
			slots[index].update(null)
	else: 
		for index in range(min(inventoryResource.collectables.size(), slots.size())):
			slots[index].update(inventoryResource.collectables[index])
	
