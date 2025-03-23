extends Node2D

@onready var big_tree_sprite: Sprite2D = $BigTreeSprite
@onready var clickable_area: ClickableArea = $ClickableArea

func _on_clickable_area_mouse_on_structure(mouse_on_object: bool) -> void:
	if mouse_on_object:
		big_tree_sprite.material.set_shader_parameter("thickness", 1)
	else:
		big_tree_sprite.material.set_shader_parameter("thickness", 0)
