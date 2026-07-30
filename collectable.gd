extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		Global.collectables += 1
		Global.update_collectables.emit()
		queue_free()
