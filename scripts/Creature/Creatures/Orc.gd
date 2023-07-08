class_name Orc

extends Creature


@export var image : String

func _init():
	self.health = 50
	self.damage = 1.0
	self.speed = 50
	self.image = "res://assets/d3k02xj-fe9ab83c-d871-4f0a-898e-443061446995.png"

func _ready():
	sprite = get_node("CharacterBody2D/Sprite2D")
	sprite.texture = load(image)
