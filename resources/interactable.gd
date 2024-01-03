class_name InteractableResource extends Resource

const DEFAULT_FAILURE_TEXT = "Das hat nicht geklappt."

@export var name: String
@export var frame_count: int = 0
@export var texture: Texture2D
@export var look_at_text: String
@export var fail_interaction_text: String = DEFAULT_FAILURE_TEXT
@export var hover_text: String
@export var is_interacted: bool = false
@export var interaction_item: CollectableItem

var interaction_dict = {
	"logs": func(item: CollectableItem):
		if name == "bonfire" and item.inventory_amount == 3:
			is_interacted = true
			return true
		else:
			return false,
	"polarbear_skull": func(_item: CollectableItem): return false,
	"lamp": func(_resource: CollectableItem):
		if name == "invisible_hill":
			is_interacted = true
			return true
		else:
			return false,
}

func test_item(item: CollectableItem):
	return interaction_dict[item.name].call(item)


