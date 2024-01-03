extends Entity

@onready var logsSprite: Sprite2D = $Sprite2D

func _ready():
	logsSprite.frame = resource.frame_count - 1


func update_amounts():
	resource.world_amount -= 1
	resource.inventory_amount += 1
	
func take():
	update_amounts()
	logsSprite.frame = clamp(resource.world_amount - 1, 0, 3)
	if resource.world_amount == 0:
		GameState.current_dialogue_indices.explorer = 6
		queue_free()

func _on_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("primary action"):
		action.emit('look_at', self)
	if Input.is_action_pressed("secondary action"):
		action.emit('take', self)

func set_shader_value(value: float):
	$Sprite2D.material.set_shader_parameter("shine_progress", value)
	
func _on_mouse_entered():
	super()
	var tween = create_tween()
	tween.tween_method(set_shader_value, 0.0, 1.0, 0.3)

