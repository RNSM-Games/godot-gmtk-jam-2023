extends Node2D

class_name Entity

@export var health : int
@export var damage : float
@export var speed : float
@export var can_take_damage : bool = true
@export var sprite : Sprite2D

func get_hit(dmg:int) -> void:
	take_damage(dmg)


func take_damage(dmg:int) -> void:
	health-=dmg
	if(health <= 0):
		die()

func die() -> void:
	queue_free()
