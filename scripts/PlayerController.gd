extends MovementController



func get_input():
	var direction : Vector2 = Vector2.ZERO
	direction = Input.get_vector("left", "right", "up", "down")
	print(direction)
	move_direction = direction


func _physics_process(delta):
	get_input()
	if(can_move):
		move(get_parent().speed,move_direction)
		move_and_slide()
