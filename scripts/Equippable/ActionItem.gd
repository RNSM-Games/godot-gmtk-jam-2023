extends Equippable
class_name ActionItem

var cooldown : float
var damage_modifier : float
var hitbox : CollisionShape2D
@export var character : CharacterBody2D
@export var character_bod : Node2D


func equip(character_node: Node2D):
	hitbox = character_node.get_parent().get_node("Collider/Hitbox")
	character = get_parent().get_parent()
	character_bod = character_node

func action(_damage:float):
	assert(false, "Please override `some_method()` in the derived script.")

