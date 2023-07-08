extends Weapon
class_name MeleeWeapon

func _init():
	self.damage_modifier = 25.0

func action(damage:float):
	self.attack_damage = damage * damage_modifier
	# get_parent().get_node("AnimationPlayer").play("Swing")

func _on_area_2d_body_entered(body):
	if body.get_parent().is_in_group("entity"):
		body.get_parent().get_node("Body").get_hit(self.attack_damage)
