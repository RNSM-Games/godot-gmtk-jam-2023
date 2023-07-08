extends Node
class_name State

@export var enemy_controller : CharacterBody2D
@export var enemy : Node2D

signal transitioned

func do_setup():
	enemy_controller = get_parent().enemy_controller
	enemy = get_parent().enemy

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
