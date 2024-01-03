extends Resource
class_name InventoryResource

@export var collectables: Array[CollectableItem]

func get_collectable(item: CollectableItem):
	return collectables.find(item)

func delete_from_inventory(item: CollectableItem):
	collectables.erase(item)
	
func add_to_inventory(item: CollectableItem):
	var index = get_collectable(item)
	if index < 0:
		collectables.append(item)
		
