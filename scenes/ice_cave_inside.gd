extends LevelController

@onready var camera: Camera2D = $Dickie/Camera2D
@onready var dickie: Dickie = $Dickie
@onready var music: AudioStreamPlayer = $ThemeMusic
@onready var ui = %UI
@onready var ice_cave_background = $IceCaveBackground
@onready var ice_cave_foreground = $IceCaveForeground
@onready var seal_family = $Characters/SealFamily

@onready var credits_layer = $CreditsLayer
var credtits_scene = preload("res://scenes/ui/credits.tscn")

func _ready():
	super()
	GameState.delete_danger_zone.connect(_on_delete_danger_zone)
	music.stream = load("res://assets/audio/Dickie-Adventure-Cave.ogg")	
	music.play()
	seal_family.speechbubble.dialogue_over.connect(_on_dialogue_over)

	
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
		seal_family.speechbubble.activate("seal_family")
		
func _on_dialogue_over():
	await get_tree().create_timer(2.5).timeout
	var tween = create_tween()
	ice_cave_background.hide()
	ice_cave_foreground.hide()
	var credits = credtits_scene.instantiate()
	credits_layer.add_child(credits)
		
func _on_theme_music_finished():
	music.play()
