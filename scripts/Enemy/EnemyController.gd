extends MovementController

var target : CharacterBody2D

func _process(delta):
	if velocity.x != 0:
		get_child(0).get_node("Sprite2D").flip_h = velocity.x < 0

func get_target():
	if !target:
		return Vector2(0,0)
	print("GET TARGET",target.global_position)
	return target.global_position
