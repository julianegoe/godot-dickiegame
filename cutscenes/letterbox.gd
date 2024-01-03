extends CanvasLayer

@export var top_min_height = 0
@export var bottom_min_height = 0

func _process(_delta):
	$Top.custom_minimum_size.y = top_min_height
	$Bottom.custom_minimum_size.y = bottom_min_height
