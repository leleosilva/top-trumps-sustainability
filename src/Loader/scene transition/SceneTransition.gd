extends CanvasLayer

func change_scene(target_scene: String) -> void:
	
	$TransitionAnimation.play("dissolve")
	yield($TransitionAnimation, "animation_finished")

	assert(get_tree().change_scene(target_scene) == OK, "Error while switching to new scene.")

	$TransitionAnimation.play_backwards("dissolve")
