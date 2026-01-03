extends Area2D

@onready var player: CharacterBody2D = %Player

func _ready() -> void:
	print("Border Area2D ready")
	# Connect the signal in code to make sure it's connected
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	print("Something entered the border area: ", body.name)
	if body == player:
		player.position = Vector2(0, 0)
		print("Player fell :(")