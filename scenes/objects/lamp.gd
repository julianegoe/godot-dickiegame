extends Entity

@onready var lampSprite: Sprite2D = $Sprite2D

func _ready():
	lampSprite.frame = clamp(resource.frame_count - 1, 0, resource.frame_count)

func _on_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("primary action"):
		action.emit('look_at', self)
	if Input.is_action_pressed("secondary action"):
		action.emit('take', self)

func take():
	resource.world_amount = 0
	resource.inventory_amount = 1
	queue_free()
