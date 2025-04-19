extends Node2D
class_name ClickableStructure


#how to create a new structure:
#1) connect a sprite in the inspector with sprite for outline
#2) click on ClickableArea in scene tree and connect ClickableArea

@export var sprite : Sprite2D
@export_category("Currency Info")
@export_enum("Honey","Pollen","Diamond") var currency_type: int = 0
@onready var clickable_area: ClickableArea = $ClickableArea
@onready var big_tree_sprite: Sprite2D = $BigTreeSprite
@onready var level1tree = preload("res://Assets/Graphics/Structures/tree/TreeBare.png")
@onready var level2tree = preload("res://Assets/Graphics/Structures/tree/TreeLeaves.png")
@onready var level3tree = preload("res://Assets/Graphics/Structures/tree/TreeBuds.png")
@onready var level4tree = preload("res://Assets/Graphics/Structures/tree/TreeBloom.png")


func _ready() -> void:
	clickable_area.give_money.connect(give_currency)
	change_tree_sprite(1)


func _on_clickable_area_mouse_on_structure(mouse_on_object: bool) -> void:
	# when a player hovers on a structure, change shader to show
	if mouse_on_object:
		sprite.material.set_shader_parameter("thickness", 10)
	else:
		sprite.material.set_shader_parameter("thickness", 0)

func give_currency():
	match currency_type:
		0: #honey
			Global.honey_count += Global.honey_per_click
		1: #pollen
			Global.pollen_count += 1
		2: #diamond
			Global.diamond_count += 1
		_:
			Global.honey_count += Global.honey_per_click

func change_tree_sprite(level : int):
	match level:
		1:
			big_tree_sprite.texture = level1tree
		2:
			big_tree_sprite.texture = level2tree
		3:
			big_tree_sprite.texture = level3tree
		4:
			big_tree_sprite.texture = level4tree
	
