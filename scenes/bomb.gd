extends Node2D

var time_to_explode : float = 3
@export var shape : ShapeCast2D

# Called when the node enters the scene tree for the first time.
func _ready():


	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _phys_process(delta):
	time_to_explode -= delta
	if(time_to_explode<= 0):
		pass
