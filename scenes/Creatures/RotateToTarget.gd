extends Node2D


@export var controller : CharacterBody2D
var target : Vector2




# Called when the node enters the scene tree for the first time.
func _ready():
	controller = get_parent()


func _physics_process(delta):
	position = target.normalized()*50
	print(position)
	

# # Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	target = get_angle()


func get_angle():
	return controller.get_target() - controller.position
	
