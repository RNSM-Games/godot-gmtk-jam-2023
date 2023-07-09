extends Weapon
class_name MeleeWeapon

@export var weapon_hitbox : CollisionShape2D

func _init():
	damage_modifier = 25.0
	item_type = "Melee"

func action(damage:float):
	self.attack_damage = damage * damage_modifier
	# get_parent().get_node("AnimationPlayer").play("Swing")

func _on_area_2d_body_entered(body):
	if body.get_parent().is_in_group("entity"):
		body.get_parent().get_node("Body").get_hit(self.attack_damage)
