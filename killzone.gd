extends Area2D

func _on_body_entered(body):
	
	print(body.name)
	if body.name == "player-1" or body.name == "player-2":
		$Timer.start()


func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
