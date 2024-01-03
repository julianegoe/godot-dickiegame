extends Resource
class_name PipesSettings

const DEFAULT_MIN: int = 30
const DEFAULT_MAX: int = 100

@export var min_position: int = DEFAULT_MIN
@export var max_position: int = DEFAULT_MAX

func reset():
	min_position = DEFAULT_MIN
	max_position = DEFAULT_MAX
