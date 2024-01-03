class_name LevelController
extends Node2D

var item_preview_scene: PackedScene = preload("res://scenes/objects/item_preview.tscn")
@onready var takeSound: AudioStreamPlayer = $TakeSoundEffect
@onready var inventorySound: AudioStreamPlayer = $InventorySoundEffect
@onready var interactSound: AudioStreamPlayer = $InteractSoundEffect

func _on_inventory_closed():
	inventorySound.play()
	get_tree().paused = false

func _on_inventory_opened():
	inventorySound.play()
	get_tree().paused = true

func _on_slot_clicked(itemSprite: Sprite2D, data: CollectableItem):
	if $ItemPreviews.get_child_count() != 0:
		var last_preview = $ItemPreviews.get_child(0)
		last_preview.queue_free()
	var item_preview = item_preview_scene.instantiate()
	item_preview.set_preview(itemSprite, data)
	$ItemPreviews.add_child(item_preview)
	$UI/Inventory.close()

func _on_entity_hovered(text: String):
	$UI/EntityInfoText.set_text(text)

func _on_entity_not_hovered():
	$UI/EntityInfoText.set_text("")

func _on_dialogue_closed():
	$UI.get_child(3).queue_free()

func _on_quest_unlocked(quest_name):
	GameState.quests[quest_name].unlocked = true
	GameState.quests[quest_name].side_effects.call()
	
func _on_action_clicked(action_type, entity: Entity):
	match action_type:
		"look_at":
			$UI/LookAtText.set_text(entity.resource.look_at_text)
		"take":
			takeSound.stream = load("res://assets/audio/704749__err0rc0de__grab-item.wav")
			takeSound.play()
			$UI/LookAtText.set_text(entity.resource.take_text)
			entity.take() # code unique to entity
			%Inventory.inventoryResource.add_to_inventory(entity.resource)
			%Inventory.update()
		"talk_to":
			GameState.curr_pause_state = GameState.PauseState.Dialogue
			entity.talk_to()
		"open":
			$UI/LookAtText.set_text(entity.resource.open_text)
			entity.open()
		"interact":
			interactSound.play()
			var is_successful = entity.interact()
			if is_successful:
				%Inventory.inventoryResource.delete_from_inventory(entity.resource.interaction_item)
				%Inventory.update()
			else:
				$UI/LookAtText.set_text(entity.resource.fail_interaction_text)
				
func _ready():
	for slot in get_tree().get_nodes_in_group("Slots"):
		slot.inventory_slot_clicked.connect(_on_slot_clicked)
	for entity in get_tree().get_nodes_in_group("Entities"):
		entity.action.connect(_on_action_clicked)
		entity.is_hovered.connect(_on_entity_hovered)
		entity.is_not_hovered.connect(_on_entity_not_hovered)
		if entity.has_method("talk_to"):
			entity.speechbubble.quest_unlocked.connect(_on_quest_unlocked)
		

