extends CharacterBody2D

class_name MovementController

var move_direction : Vector2
var can_move : bool = true
@export var body : Node2D


func move(speed: float, direction: Vector2):
	velocity = speed * direction
	position.x = clamp(position.x, 0, get_viewport_rect().size
.x)
	position.y = clamp(position.y, 0, get_viewport_rect().size
.y)
	move_and_slide()
    velocity = speed * direction
    move_and_slide()


func get_target() -> Vector2:
	return Vector2.ZERO



