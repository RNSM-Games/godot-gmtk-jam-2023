extends MovementController



func get_input():
	var direction : Vector2 = Vector2.ZERO
	direction = Input.get_vector("left", "right", "up", "down")
	move_direction = direction
	if velocity.x != 0:
		$Body/Sprite2D.flip_h = velocity.x < 0


func _physics_process(_delta):
	get_input()
	if(can_move):
		move(get_node('Body').speed,move_direction)
		move_and_slide()


func _input(event):
	if event.is_action_pressed("Attack"):
		body.attack()
	if event.is_action_pressed("Ability"):
		body.use_ability()
