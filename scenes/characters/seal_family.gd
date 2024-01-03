class_name SealFamily extends Entity

@onready var speechbubble: Speechbubble = $Ui/Node2D/Speechbubble

func _ready():
	speechbubble.dialogue_resource = load("res://resources/Characters/seal_family_resource.tres")

func _input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("primary action"):
		action.emit('look_at', self)
	if Input.is_action_pressed("secondary action"):
		action.emit('talk_to', self)
		

func talk_to():
	speechbubble.activate("seal_family")
