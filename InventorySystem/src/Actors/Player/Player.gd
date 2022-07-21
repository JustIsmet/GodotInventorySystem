extends Player_Utils
class_name Player

func _physics_process(delta: float) -> void:
	direction = _get_direction(direction)
	velocity = _calculate_move_velocity(direction, speed, velocity, gravity)
	velocity = move_and_slide(velocity, Vector2.UP)



func _get_direction(direction) -> Vector2:
	direction = Vector2(Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
						-1.0 if Input.get_action_strength("jump") and is_on_floor() else 0.0)
	
	return  direction


func _calculate_move_velocity(direction, speed, velocity, gravity):
	var out = velocity
	out.x = direction.x * speed.x
	out.y += gravity
	if direction.y == -1.0:
		out.y = direction.y * speed.y
	
	return out
