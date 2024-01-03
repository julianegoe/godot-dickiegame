extends Node2D
class_name Obstacles

func _ready():
	var upper_pipes = get_child(0)
	var lower_pipes = get_child(1)
	
	for upper_pipe in upper_pipes.get_children():
		var random_height = randi_range(50, 100)
		upper_pipe.pipe.size.y = random_height
		upper_pipe.pipe.position.y = -random_height
		upper_pipe.collision_shape.shape.size.y = random_height
		upper_pipe.collision_shape.position.y = -random_height / 2
	
	for lower_pipe in lower_pipes.get_children():
		var random_height = randi_range(50, 100)
		lower_pipe.pipe.size.y = random_height
		lower_pipe.pipe.position.y = -random_height
		lower_pipe.collision_shape.shape.size.y = random_height
		lower_pipe.collision_shape.position.y = -random_height / 2
		
func _physics_process(delta):
	position.x -= 100.0 * delta
		
