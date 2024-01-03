extends CanvasLayer

signal closeBook

@export var content: BookContent

@onready var leftPage: RichTextLabel = $LeftPage/MarginContainer/VBoxContainer/RichTextLabel
@onready var rightPage: RichTextLabel = $RightPage/MarginContainer/VBoxContainer/RichTextLabel
@onready var leftArrowContainer: MarginContainer = $LeftContainer
@onready var rightArrowContainer: MarginContainer = $RightContainer

var currentPage: int = 0:
	set(value):
		var index = clamp(value, 0, content.bookContent.size() - 1)
		leftPage.text = content.bookContent[index].left
		rightPage.text = content.bookContent[index].right
		if index == content.bookContent.size() - 1:
			rightArrowContainer.hide()
		elif index == 0:
			leftArrowContainer.hide()
		else:
			leftArrowContainer.show()
			rightArrowContainer.show()
		currentPage = index
	get:
		return currentPage
		

func _ready():
	leftPage.text = content.bookContent[currentPage].left
	rightPage.text = content.bookContent[currentPage].right
	
func _on_next_arrow_pressed():
	currentPage += 1

func _on_prev_arrow_pressed():
	currentPage -= 1

func _on_close_button_pressed():
	closeBook.emit()
	
