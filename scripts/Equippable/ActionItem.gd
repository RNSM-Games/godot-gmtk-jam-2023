extends Equippable
class_name ActionItem

var cooldown : float
var damage_modifier : float
var hitbox : CollisionShape2D
var item_type : String
@export var  character : Node2D


func equip(character_body: CollisionShape2D, character_node: Node2D):
	hitbox = character_body
	character = character_node

func action(_damage: float):
	assert(false, "Please override `some_method()` in the derived script.")

