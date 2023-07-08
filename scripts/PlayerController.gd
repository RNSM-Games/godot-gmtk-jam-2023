extends MovementController



func get_input():
	var direction : Vector2 = Vector2.ZERO
	direction = Input.get_vector("left", "right", "up", "down")
	move_direction = direction


func _physics_process(delta):
	print(self.position)
	get_input()
	if(can_move):
		move(get_node('Body').speed,move_direction)
