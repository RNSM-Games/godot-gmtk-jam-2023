extends State
class_name EnemyState

var enemy_controller : CharacterBody2D
var enemy : Node2D

func _ready():
	await owner.ready
	
	enemy_controller = owner.owner
	enemy = owner.owner.get_node("Body")
	
	assert(enemy_controller != null, "must have controller")
	assert(enemy != null, "must have controller")
