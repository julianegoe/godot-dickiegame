extends Entity

@onready var speechbubble_scene = preload("res://scenes/ui/speechbubble.tscn")
var speechbubble: Speechbubble

func _ready():
	speechbubble = speechbubble_scene.instantiate()
	var ui_node = %UI
	speechbubble.dialogue_resource = load("res://resources/Characters/polar_bear_resource.tres")
	speechbubble.position += Vector2(200, 200)
	ui_node.add_child(speechbubble)
	
func _on_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("primary action"):
		action.emit('look_at', self)
	if Input.is_action_pressed("secondary action"):
		action.emit('talk_to', self)
		

func talk_to():
	speechbubble.activate("polar_bear")
