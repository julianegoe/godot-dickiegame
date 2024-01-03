extends Entity

@onready var book: CanvasLayer = $Logbook

func _ready():
	book.hide()

func _on_input_event(_viewport, _event, _shape_idx):
	if Input.is_action_pressed("primary action"):
		action.emit('look_at', self)
	if Input.is_action_pressed("secondary action"):
		action.emit('open', self)

func open():
	book.show()
	$Sprite2D.hide()

func _on_logbook_close_book():
	book.hide()
	$Sprite2D.show()
