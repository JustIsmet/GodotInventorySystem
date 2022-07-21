extends Area2D


func _on_GoldKey_body_entered(body: Node) -> void:
	if body is Player:
		if len(body.inventory) < 5:
			body.inventory.append(self.name)
			queue_free()
