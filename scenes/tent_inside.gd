extends LevelController

@onready var dickie: Dickie = $Dickie
@onready var music: AudioStreamPlayer = $ThemeMusic

func _on_exit_body_entered(body):
	if body.is_in_group("Dickie"):
		GameState.dickie_position = GameState.DICKIE_POSITION.Tent
		SceneTransition.change_scene("res://scenes/outside.tscn")

func _ready():
	super()
	if GameState.dickie_position == GameState.DICKIE_POSITION.WakeUp:
		dickie.speechbubble.activate("dickie")
	for collectable in $Collectables.get_children():
		collectable.set_state()
	music.stream = load("res://assets/audio/Dickie-Adventure-Zelt.ogg")	
	music.volume_db = -15
	music.play()
	
func _on_theme_music_finished():
	music.play()
