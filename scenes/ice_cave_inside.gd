extends LevelController

@onready var camera: Camera2D = $Dickie/Camera2D
@onready var dickie: Dickie = $Dickie
@onready var music: AudioStreamPlayer = $ThemeMusic

func _ready():
	super()
	GameState.delete_danger_zone.connect(_on_delete_danger_zone)
	music.stream = load("res://assets/audio/Dickie-Adventure-Cave.ogg")	
	music.volume_db = -15
	music.play()

	
func _on_danger_zone_body_entered(body):
	if body.is_in_group("Dickie"):
		$UI/LookAtText.set_text("Arrgh, er will mich fressen!!")
		GameState.quests["polar_bear_panic"].unlocked = true
		GameState.current_dialogue_indices.explorer = 13

func _on_delete_danger_zone():
	$WorldBounds/Right/CollisionShape2D.position.x = 6000
	camera.limit_right = 6000

func _on_home_body_entered(body):
	if body is Dickie:
		music.stop()
		$HomeMusic.play()
		GameState.End.done = true

func _on_theme_music_finished():
	music.play()
