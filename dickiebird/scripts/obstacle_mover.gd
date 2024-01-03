extends Node
class_name Mover

var obstacles: Obstacles
var obstacles_pos_x: float

func _init(items: Obstacles):
	obstacles = items
	obstacles_pos_x = items.position.x

func _process(_delta):
	obstacles_pos_x = obstacles.position.x
	print(obstacles_pos_x)
