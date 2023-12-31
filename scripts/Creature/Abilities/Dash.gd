extends ActionItem

var can_dash : bool = true
var is_dashing : bool = false
var dash_pos : Vector2 = Vector2.ZERO
var dash_dist : float = 1000
var time_to_dash : float
func _init():
	cooldown = 7
	time_to_dash = cooldown
	damage_modifier = 0



func _physics_process(delta):

	if (!is_dashing && !can_dash && time_to_dash == cooldown):
		is_dashing = true
		# hitbox.disabled = true
		character.can_move = false
	elif(is_dashing):
		character.position = lerp(character.position,dash_pos, .4)
	if(character.position.round() == dash_pos.round()):
		is_dashing = false
		# hitbox.disabled = false
		character.can_move = true
	if(time_to_dash <= 0 ):
		time_to_dash = cooldown
		can_dash = true
	
	if(!can_dash):
		time_to_dash -= delta
	







func action(damage: float):
	dash_pos= character.position + character.move_direction*dash_dist
	can_dash = false
