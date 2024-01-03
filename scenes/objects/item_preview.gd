extends Node2D

signal item_deleted_from_inventory(item: CollectableItem)

@onready var preview_image: Sprite2D = $Sprite2D
@export var data: CollectableItem


func _ready():
	preview_image.self_modulate.a = 0.8
	preview_image.scale = Vector2(2,2)

func _process(_delta):
	var mouse_pos = get_global_mouse_position()
	global_position = mouse_pos
		

func set_preview(sprite, resource):
	$Sprite2D.texture = sprite.texture
	$Sprite2D.hframes = sprite.hframes
	$Sprite2D.frame = sprite.frame
	$Sprite2D.scale = sprite.scale
	data = resource

func drop():
	item_deleted_from_inventory.emit(data)

func _on_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("secondary action"):
		queue_free()
