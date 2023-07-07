extends MovementController



func get_input():
    var direction : Vector2 = Vector2.ZERO

    if Input.is_action_pressed("move_right"):
        direction.x += 1
    if Input.is_action_pressed("move_left"):
        direction.x -= 1
    if Input.is_action_pressed("move_up"):
        direction.y += 1
    if Input.is_action_pressed("move_down"):
        direction.x -= 1
    move_direction = direction
