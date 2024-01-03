extends Node2D
class_name Pipe

@onready var top_pipe = $Top
@onready var bottom_pipe = $Bottom

func _ready():
	move()

func randomize_properties(min_pos, max_pos):
	top_pipe.position.y += randi_range(min_pos, max_pos)
	bottom_pipe.position.y -= randi_range(min_pos, max_pos)
	
func move():
	$AnimationPlayer.play("move")

func despawn():
	queue_free()

func _on_goal_post_body_exited(body):
	if body is DickieBird:
		body.score.add_points()
		$AudioStreamPlayer.play()
	
