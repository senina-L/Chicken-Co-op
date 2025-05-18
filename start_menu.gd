extends Node


func _on_button_pressed() -> void:
	$AudioStreamPlayer2D.play()
	get_tree().change_scene_to_file("res://Scenes/game.tscn")

func _on_button_2_pressed() -> void:
	get_tree().quit()

func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/instructions.tscn")
