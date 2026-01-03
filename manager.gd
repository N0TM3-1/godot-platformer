extends Node

var score = 0
@onready var score_label: Label = $'../Player/Camera2D/Score'

func add_coin():
	score +=1
	score_label.text = "Score: %d" % score