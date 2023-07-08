extends ActionItem

var can_charge : bool = true
var is_charging: bool = false
var charge_pos : Vector2 = Vector2.ZERO
var charge_dist : float = 1000
var time_to_charge : float

func _init():
	cooldown = 7
	time_to_charge = cooldown
	damage_modifier = 0



func _physics_process(delta):

	if (!is_charging&& !can_charge && time_to_charge == cooldown):
		is_charging= true
		character_bod.can_take_damage = false
		character.can_move = false
	elif(is_charging):
		character.position = lerp(character.position,charge_pos, .4)
	if(character.position.round() == charge_pos.round()):
		is_charging= false
		character_bod.can_take_damage = true
		character.can_move = true
	if(time_to_charge <= 0 ):
		time_to_charge = cooldown
		can_charge = true
	
	if(!can_charge):
		time_to_charge -= delta


func action(dmg: float):
	charge_pos = character.position + character.move_direction*charge_dist
	can_charge = false


func _on_rigid_body_2d_body_entered(body):
	body.get_parent()
