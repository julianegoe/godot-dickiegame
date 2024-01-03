extends Entity

func _ready():
	if resource.is_interacted:
		place_lamp()

func _on_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("primary action"):
		action.emit('look_at', self)
	if Input.is_action_pressed("secondary action"):
		action.emit('interact', self)
			

func interact():
	var overlapping_items = get_overlapping_areas()
	for item in overlapping_items:
		if item.is_in_group("Preview"):
			resource.interaction_item = item.data
			if resource.test_item(item.data):
				item.data.inventory_amount = 0
				place_lamp()
			else:
				item.queue_free()
				return false
			item.queue_free()
			return true
		else:
			item.queue_free()
			return false

func place_lamp():
	$Lamp.visible = true
	resource.look_at_text = "Ein Hügel, auf dem eine Lampe steht."
	GameState.current_dialogue_indices.polar_bear = 1
	$"../../WorldBounds/DangerZone".queue_free()
	$"../../WorldBounds/Right/CollisionShape2D".position.x = 3500
