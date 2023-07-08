extends Equippable
class_name ActionItem

var cooldown : float
@export var damage_modifier : float
@export var hitbox : CollisionShape2D
var character : CharacterBody2D
var character_bod : Node2D



func _ready():
	assert(get_parent().get_parent().get_node("Collider/Hitbox"))
	hitbox = get_parent().get_parent().get_node("Collider/Hitbox")
	assert(get_parent().get_parent())
	character = get_parent().get_parent()
	character_bod = get_parent().get_parent().get_node("Body")

func action(damage:float):
	assert(false, "Please override `some_method()` in the derived script.")

