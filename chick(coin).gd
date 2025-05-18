extends Area2D

@onready var score: Node = %Score

func _on_body_entered(body: Node2D) -> void:
	score.chick_collected()
	$AudioStreamPlayer2D.play()
	queue_free()
