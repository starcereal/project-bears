extends Node2D
class_name Structure


#how to create a new structure:
#1) connect a sprite in the inspector with sprite for outline
#2) click on ClickableArea in scene tree and connect ClickableArea

@export var sprite : Sprite2D
@onready var clickable_area: ClickableArea = $ClickableArea

func _on_clickable_area_mouse_on_structure(mouse_on_object: bool) -> void:
	if mouse_on_object:
		sprite.material.set_shader_parameter("thickness", 1)
	else:
		sprite.material.set_shader_parameter("thickness", 0)
