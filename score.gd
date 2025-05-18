extends Node

#Make the text say your scre at the end
@onready var label: Label = $Label

var score = 0

func chick_collected():
	score += 1
	label.text = "You got back to your Co-op! You brought " + str(score) + " chicks back with you"
