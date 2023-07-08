extends Node2D


@export var controller : CharacterBody2D
var target : Vector2
var orientation = 1
var cooldwon : float 
var weapon : Node2D




# Called when the node enters the scene tree for the first time.
func _ready():
	controller = get_parent()
	weapon = get_child(0).get_child(0)



func _physics_process(delta):
	var temp_position = target.normalized() * 50 * orientation
	print(temp_position)
	var temp_rotation = target.angle() - orientation
	temp_position.y -= 200
	position = lerp(position,temp_position,.5)
	rotation = lerp_angle(rotation,temp_rotation,.5)
	weapon.get_node("Node2D/Sprite2D/Area2D/CollisionShape2D").disabled = true

	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	target = get_angle()


func get_angle():
	print("JOEMAMA", controller.get_target() - controller.position)
	return controller.get_target() - controller.position


func _input(event):
	if event.is_action_pressed("Attack"):
		print("hi")
		orientation *= -1
		weapon.get_node("Node2D/Sprite2D/Area2D/CollisionShape2D").disabled = false


		
	
