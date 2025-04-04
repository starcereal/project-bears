extends Node2D
class_name ClickableStructure


#how to create a new structure:
#1) connect a sprite in the inspector with sprite for outline
#2) click on ClickableArea in scene tree and connect ClickableArea

@export var sprite : Sprite2D
@export_category("Currency Info")
@export_enum("Honey","Pollen","Diamond") var currency_type: int = 0
@onready var clickable_area: ClickableArea = $ClickableArea

func _ready() -> void:
	clickable_area.give_money.connect(give_currency)

func _on_clickable_area_mouse_on_structure(mouse_on_object: bool) -> void:
	# when a player hovers on a structure, change shader to show
	if mouse_on_object:
		sprite.material.set_shader_parameter("thickness", 10)
	else:
		sprite.material.set_shader_parameter("thickness", 0)

func give_currency():
	match currency_type:
		0: #honey
			Global.honey_count += 1
		1: #pollen
			Global.pollen_count += 1
		2: #diamond
			Global.diamond_count += 1
		_:
			Global.honey_count += 1
