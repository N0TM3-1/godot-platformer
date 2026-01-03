extends Area2D

@onready var manager: Node = get_node("/root/Node/Manager")

func _on_body_entered(body: Node2D) -> void:
	manager.add_coin()
	queue_free()
