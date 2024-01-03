extends LevelController

@onready var music: AudioStreamPlayer = $ThemeMusic

func _ready():
	super()
	for collectable in $Collectables.get_children():
		collectable.set_state()
	music.stream = load("res://assets/audio/Dickie-Adventure-Icy-World.ogg")	
	music.volume_db = -15
	music.play()

func _on_theme_music_finished():
	music.play()
