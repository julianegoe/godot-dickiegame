extends Node2D

var pipe_scene = preload("res://dickiebird/scenes/pipe_v2.tscn")
@export var pipes_settings: PipesSettings
@onready var dickie: DickieBird = $DickieBird
@onready var music: AudioStreamPlayer = $AudioStreamPlayer

func _ready():
	spawn_pipes()
	dickie.score.score.connect(_on_score)
	music.play()
	
func spawn_pipes():
	var current_pipe = pipe_scene.instantiate()
	$Pipes.add_child(current_pipe)
	current_pipe.randomize_properties(pipes_settings.min_position, pipes_settings.max_position)
	$Pipes/SpawnTimer.start()

func _on_spawn_timer_timeout():
	spawn_pipes()


func _on_dickie_bird_game_over():
	GameState.dickie_position = GameState.DICKIE_POSITION.WakeUp
	SceneTransition.change_scene("res://scenes/tent_inside.tscn")

func _on_score(points: int):
	$UI/Score.set_score(points)

func _on_game_over_screen_restart():
	GameState.dickie_position = GameState.DICKIE_POSITION.WakeUp
	SceneTransition.change_scene("res://scenes/tent_inside.tscn")

func _on_level_two_timer_timeout():
	pipes_settings.min_position = 50
	pipes_settings.max_position = 110

func _on_abyss_body_entered(body):
	if body is DickieBird:
		GameState.dickie_position = GameState.DICKIE_POSITION.WakeUp
		SceneTransition.change_scene("res://scenes/tent_inside.tscn")


func _on_audio_stream_player_finished():
	music.play()
