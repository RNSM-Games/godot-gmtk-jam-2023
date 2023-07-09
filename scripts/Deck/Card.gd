extends Node2D


@export var sprite : Texture2D
@export var card_content : PackedScene
var spawn_time : float = 3

signal cardExploded

func _ready():
	$Sprite2D.texture = sprite
	$AnimatedSprite2D.visible = false



func _spawn(isPlayer : bool):
	var card_type := card_content.get_state().get_node_groups(0)

	if card_type.find("creature") != -1:
		print("creature")
		var v = card_content.instantiate()
		add_child(v)
		pass
	if card_type.find("buff") != -1:
		print("buff")
		pass
	if card_type.find("weapon") != -1:
		print("weapon")
		pass
	if card_type.find("event") != -1:
		print("event")
		pass


func _on_animated_sprite_2d_animation_finished():
	cardExploded.emit()
