extends Equippable
class_name ActionItem

var cooldown : float
var damage_modifier : float
var hitbox : CollisionShape2D
@export var character : CharacterBody2D
@export var character_bod : Node2D


func _ready():
	assert(get_parent().get_parent().get_node("Hitbox"), "could not find hitbox")
	hitbox = get_parent().get_parent().get_node("Hitbox")
	assert(get_parent().get_parent(), "could not find body")
	character = get_parent().get_parent()
	character_bod = get_parent().get_parent().get_node("Body")

func action(_damage:float):
	assert(false, "Please override `some_method()` in the derived script.")

