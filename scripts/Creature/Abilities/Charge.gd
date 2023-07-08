extends ActionItem

var can_charge : bool = true
var character_body : CharacterBody2D
var character : Node2D
var is_charging: bool = false
var charge_pos : Vector2 = Vector2.ZERO
var charge_dist : float = 1000
var time_to_charge : float
func _init():
	cooldown = 7
	time_to_charge = cooldown
	damage_modifier = 0

func _ready():
	assert(get_parent().get_node("RigidBody2D/Hitbox"))
	hitbox = get_parent().get_node("RigidBody2D/Hitbox")
	assert(get_parent().get_node("Sprite"))
	character_body = get_parent().get_node("Sprite")
	character = get_parent()


func _physics_process(delta):
	print(time_to_charge)
	print(can_charge, is_charging)

	if (!is_charging&& !can_charge && time_to_charge == cooldown):
		is_charging= true
		character.can_take_damage = false
		character_body.can_move = false
	elif(is_charging):
		character_body.position = lerp(character_body.position,charge_pos, .4)
	if(character_body.position.round() == charge_pos.round()):
		is_charging= false
		character.can_take_damage = true
		character_body.can_move = true
	if(time_to_charge <= 0 ):
		time_to_charge = cooldown
		can_charge = true
	
	if(!can_charge):
		time_to_charge -= delta


func action(dmg: float):
	print("BABA")
	charge_pos= character_body.position + character_body.move_direction*charge_dist
	can_charge = false


func _on_rigid_body_2d_body_entered(body):
	body.get_parent()
