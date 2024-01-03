class_name PlayerController extends Node

var player: Dickie

var walk_to_family =  WalkToFamilyCommand.new()

func _init(dickie: Dickie) -> void:
	self.player = dickie
