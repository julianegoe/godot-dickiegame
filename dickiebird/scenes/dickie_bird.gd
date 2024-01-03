extends CharacterBody2D
class_name DickieBird

signal game_over

@export var score: Score

const GRAVITY = 500.0
const FLY_SPEED = 50
const JUMP_SPEED = -200

func _physics_process(delta):
	velocity.y += delta * GRAVITY
	if Input.is_action_just_pressed("fly"):
		$AnimatedSprite2D.play("fly")
		velocity.y = JUMP_SPEED
	var collision_object = move_and_collide(velocity * delta)
	
	if collision_object:
		game_over.emit()
