class_name Entity extends Area2D

signal is_hovered(text: String)
signal is_not_hovered
signal action(action_type: String, entity: Entity)

@export var resource: Resource

func _on_mouse_entered():
	$ActionMenu.show()
	is_hovered.emit(resource.hover_text)

func _on_mouse_exited():
	$ActionMenu.hide()
	is_not_hovered.emit()

func set_state():
	if is_in_group("Collectable"):
		if resource.world_amount == 0:
			queue_free()
