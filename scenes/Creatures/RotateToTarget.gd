extends Node2D


@export var controller : CharacterBody2D




# Called when the node enters the scene tree for the first time.
func _ready():
	controller = get_parent()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var target = controller.get_target()
	