extends Node2D

# declaring event (signal)
signal finished_Loop

# on child signal triggered, we propagate outside the scene
func _on_anima_animation_finished(_anim_name):
	emit_signal("finished_Loop")
