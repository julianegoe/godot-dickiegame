class_name JumpBackCommand extends Command

class Params:
	var input: float
	
	func _init(data: float) -> void:
		self.input = data
	
func execute(player) -> void:
	player.jump_back()
