class_name Dickie extends CharacterBody2D

var _controller: PlayerController

@onready var _controller_container = $ControllerContainer
@onready var speechbubble: Speechbubble = $Speechbubble

func _ready():
	set_controller(HumanController.new(self))
	global_position = GameState.dickie_position
	
func set_controller(controller: PlayerController) -> void:
	for child in _controller_container.get_children():
		child.queue_free()
	_controller = controller    
	_controller_container.add_child(_controller)
