extends State
class_name EnemyState

var enemy_controller : CharacterBody2D
var enemy : Node2D

var wr_enemy

func _ready():
	await owner.ready
	
	enemy_controller = owner.owner
	enemy = owner.owner.get_node("Skeleton")
	wr_enemy = weakref(enemy)
	
	assert(enemy_controller != null, "must have controller")
	assert(enemy != null, "must have controller")
