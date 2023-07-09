extends Node
class_name State

signal transitioned

func _ready():
	call_deferred("do_setup")
	
func enter():
	pass

func exit():
	pass

func update(_delta : float):
	pass

func process_physics(_delta : float):
	pass
