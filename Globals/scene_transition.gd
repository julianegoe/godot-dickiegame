extends CanvasLayer

@onready var audio: AudioStreamPlayer = $AudioStreamPlayer

func _ready():
	hide()
	$AnimationPlayer.play("fade_in")
	await $AnimationPlayer.animation_finished

func change_scene(target: String, audio_file = null) -> void:
	show()
	if audio_file:
		audio.stream = load(audio_file)
		audio.play()
	$AnimationPlayer.play("fade_out")
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_file(target)
	$AnimationPlayer.play("fade_in")
	hide()
