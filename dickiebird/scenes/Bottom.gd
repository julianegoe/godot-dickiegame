extends Marker2D

var pipe_scene: PackedScene = preload("res://scenes/pipe_v2.tscn")
var current_pipe

func _ready():
	spawn_pipe()

func spawn_pipe():
	current_pipe = pipe_scene.instantiate()
	add_child(current_pipe)
	#current_pipe.set_path("bottom")
	current_pipe.position = Vector2(randi_range(50, 100), 0)
	$Timer.start()

func _on_timer_timeout():
	spawn_pipe()
