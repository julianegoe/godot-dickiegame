extends Entity

func _on_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("primary action"):
		action.emit('look_at', self)
	if Input.is_action_pressed("secondary action"):
		action.emit('open', self)

func open():
	if GameState.quests.search_tent.unlocked:
		resource.is_open = true
		GameState.dickie_position = GameState.DICKIE_POSITION.TentInside
		SceneTransition.change_scene(resource.open_to)
