extends Node

func _process(delta: float) -> void:
	if Input.is_action_pressed("esc"):
		get_tree().change_scene_to_file("res://Scenes/start_menu.tscn")
