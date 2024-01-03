extends Entity

func _ready():
	if resource.is_interacted:
		set_fire_burning()
	else:
		$Sprite2D.frame = 0

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
				GameState.current_dialogue_indices.explorer = 12
				set_fire_burning()
			else:
				item.queue_free()
				return false
			item.queue_free()
			return true
		else:
			item.queue_free()
			return false

func set_fire_burning():
	$AnimationPlayer.play("fire_burning")
	resource.look_at_text = "Brennt."
	GameState.nice_count += 1
	$Sparks.emitting = true
	$Smoke.emitting = true
	$CracklingFireSound.play()
