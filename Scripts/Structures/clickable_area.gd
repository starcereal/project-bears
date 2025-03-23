extends Area2D
class_name ClickableArea


signal mouse_on_structure(mouse_on_object : bool)

func _on_mouse_entered() -> void:
	mouse_on_structure.emit(true)
	

func _on_mouse_exited() -> void:
	mouse_on_structure.emit(false)
