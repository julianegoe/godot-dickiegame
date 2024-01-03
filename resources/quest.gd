class_name QuestStateMachine
extends Node

signal transitioned(state)

enum QuestState {
	LOCKED,
	UNLOCKED,
	SOLVED,
	FAILED,
}
@export var quest_name: String
@export var state: QuestState = QuestState.LOCKED

func enter(new_state: QuestState):
	var previous_state: QuestState = state
	
	if previous_state == QuestState.LOCKED and new_state == QuestState.SOLVED or QuestState.FAILED or QuestState.LOCKED:
		return
	state = new_state
	transitioned.emit(state)	


