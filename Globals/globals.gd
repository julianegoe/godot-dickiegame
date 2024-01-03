extends Node

signal delete_danger_zone

var nice_count = 0
var naughty_count = 0

const DICKIE_POSITION = {
	"Start": Vector2(524, 564),
	"Tent": Vector2(2230, 550),
	"TentInside": Vector2(146, 585),
	"CaveOutside": Vector2(3372, 564),
	"CaveInside": Vector2(100, 551),
	"CaveDangerZone": Vector2(2670, 564),
	"WakeUp": Vector2(918, 585),
}
var dickie_position: Vector2 = DICKIE_POSITION.Start

enum PauseState {
	Default,
	Dialogue,
}
var curr_pause_state: PauseState = PauseState.Default

class Quest:
	var key: String
	var name: String
	var unlocked: bool = false
	var done: bool = false
	var side_effects
	
	func _init(key, name, unlocked, done, side_effects_callable):
		self.key = key
		self.name = name
		self.unlocked = unlocked
		self.done = done
		self.side_effects = side_effects_callable
		
@onready var TheBribe = Quest.new("bribe", "The Bribe", false, false, func(): naughty_count += 1)
@onready var SearchTent = Quest.new("search_tent", "Search Tent", false, false, func(): print("effect"))
@onready var PolarBearPanic = Quest.new("polar_bear_panic", "Polar Panic", false, false, func(): print("polar"))
@onready var Found = Quest.new("found", "Found?", false, false, func(): delete_danger_zone.emit())
@onready var End = Quest.new("end", "The End", false, false, transition_to_end)


@onready var quests = {
	"bribe": TheBribe,
	"search_tent": SearchTent,
	"polar_bear_panic": PolarBearPanic,
	"found": Found,
	"end": End,
}

@onready var current_dialogue_indices = {
	"explorer": 0,
	"polar_bear": 0,
	"seal_family": 0,
	"dickie": 0,
}

func transition_to_end():
	if End.done:
		await get_tree().create_timer(3).timeout
		SceneTransition.change_scene("res://scenes/credits.tscn")
