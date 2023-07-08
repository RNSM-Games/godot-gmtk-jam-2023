extends Node2D
var time_to_explode : float = 3
var curr_time : float
@export var bomb_damage : float = 20
@export var aoe : Area2D
var colliders : Array


func _init():
	curr_time = time_to_explode
	set_physics_process(true)

func _physics_process(delta):
	curr_time -= delta
	if(curr_time<= 0):
		colliders = aoe.get_overlapping_bodies()
		for collider in colliders:
			if collider.is_in_group("creatures"):
				collider.get_hit(bomb_damage)
		queue_free()