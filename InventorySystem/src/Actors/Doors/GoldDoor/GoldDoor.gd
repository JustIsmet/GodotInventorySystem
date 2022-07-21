extends StaticBody2D


func _on_GoldDoor_body_entered(body: Node) -> void:
	if body is Player:
		if body.inventory.find("GoldKey") >= 0:
			queue_free()
