extends Node




func _on_timer_timeout():
	$Card._spawn(true)
	$Card/Sprite2D.visible = false
	$Card/AnimatedSprite2D.visible = true
	$Card/AnimatedSprite2D.play()


func _on_card_card_exploded():
	$Card/AnimatedSprite2D.visible = false
