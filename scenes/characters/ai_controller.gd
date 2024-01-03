class_name AiController
extends PlayerController

func _physics_process(delta):
	walk_to_family.execute(player)
