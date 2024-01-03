extends Resource
class_name Score

signal score(points: int)

@export var count: int = 0

func add_points():
	count += 100
	score.emit(count)
	
func reset():
	count = 0
