extends CharacterBody2D

class_name MovementController

var move_direction : Vector2


func move(speed: float, direction: Vector2):
    velocity = speed * direction


