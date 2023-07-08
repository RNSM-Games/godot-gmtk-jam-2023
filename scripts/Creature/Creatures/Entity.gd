extends Node2D

class_name Entity

var health : int
var damage : float
var speed : float
var can_take_damage : bool = true
@export var sprite : Sprite2D

func get_hit(dmg:int) -> void:
	take_damage(dmg)
	
func take_damage(dmg:int) -> void:
	print("taking damage: " + str(dmg))
	health-=dmg
	if(health <= 0):
		die()

func die() -> void:
	self.queue_free()
