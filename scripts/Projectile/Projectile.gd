extends Area2D

class_name Projectile

#var direction: Vector2
var missile_speed = 750
var shot_range = 800
var start_pos = position

func _init():
	print("yo im spawn")
	

func update_rotation(_rotation, _position):
	print("updating")
#	$Sprite2D.rotation = rotation
	self.position = position
	self.rotation = rotation + PI/2
	self.start_pos = position

func _physics_process(delta):
	print("gaming")
	position -= transform.y * missile_speed * delta
	check_range(position)

func check_range(cur_pos:Vector2):

	var distance = start_pos.distance_to(cur_pos)
	
	if(distance > shot_range):
		despawn()

func on_hit_entity(target:Entity):
	print("yo im hittin lilbro")

func on_hit_other(target):
	print("yo im hittin other")
	
#	despawn()

func despawn():
	print("yo im dead man")
	self.queue_free()
	
func _on_body_entered(body):
	print("entered area")
	print(body.get_parent())
	if body.get_parent().is_in_group("entity"):
		on_hit_entity(body.get_parent())
	else:
		on_hit_other(body.get_parent())
