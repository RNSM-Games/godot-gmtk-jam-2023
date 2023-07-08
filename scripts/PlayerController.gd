extends MovementController



func get_input():
	var direction : Vector2 = Vector2.ZERO
	direction = Input.get_vector("left", "right", "up", "down")
	move_direction = direction
	if velocity.x != 0:
		get_child(0).get_node("AnimatedSprite2D").animation = "walk"
		get_child(0).get_node("AnimatedSprite2D").flip_h = velocity.x < 0


func _physics_process(_delta):
	get_input()
	if(can_move):
		move(get_child(0).speed,move_direction)
		move_and_slide()
	if velocity.length() > 0:
		get_child(0).get_node("AnimatedSprite2D").play()
	else:
		get_child(0).get_node("AnimatedSprite2D").stop()


func _input(event):
	if event.is_action_pressed("Attack"):
		body.attack()
	if event.is_action_pressed("Ability"):
		body.use_ability()

func get_target() -> Vector2:
	return get_viewport().get_mouse_position()
