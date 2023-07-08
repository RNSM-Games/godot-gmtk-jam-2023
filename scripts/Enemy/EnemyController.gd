extends MovementController

func _process(delta):
	if velocity.x != 0:
		$Body/Sprite2D.flip_h = velocity.x < 0
