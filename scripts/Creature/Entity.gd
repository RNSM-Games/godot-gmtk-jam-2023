extends Node2D

class_name Entity

@export var health : int
@export var damage : float
@export var speed : float
@export var can_take_damage : bool = true
@export var sprite : Sprite2D

func die():
	queue_free()

	

func get_hit(dmg:int):
	take_damage(dmg)


func take_damage(dmg:int):
	health-=dmg
	if(health <= 0):
		die()
