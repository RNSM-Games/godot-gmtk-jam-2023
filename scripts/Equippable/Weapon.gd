extends ActionItem
class_name Weapon

var sprite
var attack_damage := 0.0
var rotation

func move(mouse_direction: Vector2) -> void:
	sprite = $Node2D
	if(character.get_parent().is_in_group("player")):
		sprite.look_at(mouse_direction)
	
#	if not $AnimationPlayer.is_playing():
#		sprite.rotation = mouse_direction.angle()
#	if   sprite.scale.y == 1 and mouse_direction.x < 0:
#		sprite.scale.y = -1
#	elif sprite.scale.y == -1 and mouse_direction.x > 0:
#		sprite.scale.y = 1
	
