class_name Orc

extends Creature


@export var image : String


func _init():
	self.health = 50
	self.damage = 1.0
	self.speed = 500
	self.image = "res://assets/d3k02xj-fe9ab83c-d871-4f0a-898e-443061446995.png"

func _ready():
	sprite = get_node("Sprite/Sprite2D")
	sprite.texture = load(image)
	self.ability = get_node("Ability")
	self.weapon = get_node("CharacterBody2D/MeleeWeapon")

func _input(event):
	if event.is_action_pressed("attack"):
		if(weapon != null):
			weapon.action(damage)
	if event.is_action_pressed("Ability"):
		print("HEllo")
		ability.action(damage)
