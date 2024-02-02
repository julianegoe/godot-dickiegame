class_name Speechbubble extends Panel

signal quest_unlocked(questName: String)
signal dialogue_over()

var DEFAULT_SIZE: Vector2 = Vector2(470, 227)

@export var dialogue_resource: CharacterResource

@onready var characterTextLabel: RichTextLabel = %CharacterText
@onready var characterName: Label = %CharacterName
@onready var answerContainer: VBoxContainer = %AnswerContainer
@onready var nextButton: Control = %NextButton
@onready var marginContainer: MarginContainer = $MarginContainer
@onready var dialogueManager: DialogueManager = $DialogueManager

func _ready():
	hide()
	dialogueManager.hide_choices()

func activate(entity: String):
	size = DEFAULT_SIZE
	show()
	nextButton.hide()
	dialogueManager.dialogue_tree = dialogue_resource.talk_to()
	dialogueManager.currentTextNode = GameState.current_dialogue_indices[entity]
	dialogueManager.init_text()
	dialogueManager.writeText()

func _on_margin_container_item_rect_changed():
	if characterTextLabel:
		size.y = marginContainer.size.y
		size.x = marginContainer.size.x
	
func _unhandled_input(_event):
	if Input.is_action_pressed("skip"):
		dialogueManager.skipText()
		
func _on_next_button_pressed():
	size = DEFAULT_SIZE
	dialogueManager.nextText(nextButton.nextNode)
	nextButton.hide()

func _on_dialogue_manager_ui_close():
	hide()
	dialogueManager.hide_choices()
	dialogue_over.emit()

func _on_dialogue_manager_text_complete(data):
	await get_tree().create_timer(0.25).timeout
	if data.choices.size() > 0:
		dialogueManager.show_choices()
	elif data.nextNode:
		nextButton.nextNode = data.nextNode
		nextButton.show()
	else:
		nextButton.nextNode = null
		nextButton.show()

func _on_dialogue_manager_choice_selected(data):
	size = DEFAULT_SIZE
	if data.unlockQuest:
		quest_unlocked.emit(data.unlockQuest)
	if data.nextNode:
		dialogueManager.nextText(data.nextNode)
	else:
		hide()
		dialogueManager.hide_choices()
		dialogue_over.emit()
