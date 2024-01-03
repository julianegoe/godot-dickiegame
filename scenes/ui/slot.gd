extends Panel

signal inventory_slot_clicked(sprite: Sprite2D, data: CollectableItem)
@onready var backgroundSprite: Sprite2D = $Background
@onready var itemSprite: Sprite2D = $CenterContainer/Panel/Item
@onready var data: CollectableItem

func update(collectable: CollectableItem):
	if !collectable:
		data = null
		backgroundSprite.frame = 1
		itemSprite.visible = false
	else:
		data = collectable
		backgroundSprite.frame = 0
		itemSprite.visible = true
		itemSprite.hframes = clamp(collectable.frame_count, 1, 10)
		itemSprite.texture = collectable.texture
		itemSprite.frame = clamp(collectable.inventory_amount - 1, 0, 5)
		itemSprite.scale = Vector2(1.5, 1.5)

func _on_gui_input(_event: InputEvent):
	if Input.is_action_pressed("primary action"):
		if itemSprite.is_visible_in_tree():
			inventory_slot_clicked.emit(itemSprite, data)

