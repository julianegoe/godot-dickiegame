class_name HumanController
extends PlayerController

var speed: int = 300
var direction = Vector2.ZERO

@onready var animation_player: AnimationPlayer = $"../../AnimationPlayer"
@onready var sprite = $"../../Sprite2D"

func _physics_process(_delta):
	direction = Input.get_vector("left", "right", "up", "down")
	player.velocity = direction * speed
	player.move_and_slide()
	if direction == Vector2.RIGHT:
		sprite.flip_h = false
		animation_player.play("walk")
	if direction == Vector2.LEFT:
		sprite.flip_h = true
		animation_player.play("walk")
	if direction == Vector2.ZERO:
		animation_player.stop(true)
