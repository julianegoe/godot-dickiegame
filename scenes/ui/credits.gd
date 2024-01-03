extends Control

@onready var characters: Node2D = $Characters
@onready var chars = characters.get_children()

var currentChar: int = 0:
	set(value):
		currentChar = clamp(value, 0, characters.get_child_count() - 1)
	get:
		return currentChar

func tweenCharacter(charNode: Sprite2D):
	var charTween = create_tween()
	charTween.tween_property(charNode, "position:x", 550, 5)
	charTween.connect("finished", _on_tween_finished)

func _ready():
	var tween = create_tween()
	tween.tween_property($ScrollContainer,"scroll_vertical",921,40)
	tweenCharacter(chars[currentChar])

func _on_tween_finished():
	currentChar += 1
	tweenCharacter(chars[currentChar])
