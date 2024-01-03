extends Node2D

@export var actions: ActionMenu

func _ready():
	$LeftAction.texture = actions.action_items[0].spritesheet_texture
	$LeftAction.frame = actions.action_items[0].type
	$RightAction.texture = actions.action_items[1].spritesheet_texture
	$RightAction.frame = actions.action_items[1].type
	

func _process(_delta):
	var mouse_pos = get_global_mouse_position()
	$LeftAction.global_position = mouse_pos + Vector2(-70, 0)
	$RightAction.global_position = mouse_pos + Vector2(70, 0)
