extends Weapon
class_name MeleeWeapon



func _init():
	self.damage_modifier = 25.0

func action(damage:float):
	self.attack_damage = damage * damage_modifier
	
	$AnimationPlayer.play("sword_swing")

func _on_area_2d_body_entered(body):
	print("entered area")
	print(body.get_parent())
	if body.get_parent().is_in_group("entity"):
		body.get_parent().get_hit(self.attack_damage)
