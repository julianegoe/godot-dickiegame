class_name ActionItem
extends Resource

enum ActionType {
	LOOK_AT,
	TAKE,
	OPEN,
	TALK,
	INTERACT
}
@export var spritesheet_texture: Texture2D
@export var type: ActionType
