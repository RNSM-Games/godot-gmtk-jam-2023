class_name Orc

extends Creature


@export var image : String

func _init():
	self.health = 50
	self.damage = 1.0
	self.speed = 50
	self.image = "res://assets/creature/skelly.png"

func _ready():
	sprite = get_node("CharacterBody2D/Sprite2D")
	sprite.texture = load(image)
	self.ability = get_node("Ability")
	self.weapon = get_node("CharacterBody2D/ranged_weapon")

func _input(event):
	if(weapon != null):
		weapon.move(get_global_mouse_position())
	if event.is_action_pressed("attack"):
		if(weapon != null):
			weapon.action(damage)
	if event.is_action_pressed("Ability"):
		print("HEllo")
		ability.action(damage)
