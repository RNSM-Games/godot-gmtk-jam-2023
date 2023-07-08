extends CharacterBody2D

class_name MovementController

var move_direction : Vector2
var can_move : bool = true
@export var body : Node2D


func move(speed: float, direction: Vector2):
	velocity = speed * direction
	move_and_slide()


