extends Node2D

@onready var bush_blueberry: Sprite2D = $BushBlueberry
@onready var bush_mixedberry: Sprite2D = $BushMixedberry
@onready var clovers: Sprite2D = $Clovers
@onready var picniccloth: Sprite2D = $Picniccloth
@onready var picnic_basket: Sprite2D = $PicnicBasket
@onready var sittingbear: Sprite2D = $Sittingbear
@onready var poppy: Sprite2D = $Poppy
@onready var pond: Sprite2D = $Pond
@onready var pie: Sprite2D = $Pie
@onready var restingbear: Sprite2D = $Restingbear
@onready var sleepingbear: Sprite2D = $Sleepingbear
@onready var treehouse: Sprite2D = $Treehouse
@onready var riddlebear: Sprite2D = $Riddlebear
@onready var standingbear: Sprite2D = $Standingbear
@onready var sando: Sprite2D = $Sando
@onready var sandobear: Sprite2D = $Sandobear
@onready var bush_strawberry: Sprite2D = $BushStrawberry
@onready var honey_icon: Sprite2D = $HoneyIcon
@onready var jamjar: Sprite2D = $Jamjar


var struct_effect : Object = GlobalPreloads.summon_structure_effect

func _ready() -> void:
	hide_all()

func build_structure():
	pass

func hide_all():
	bush_blueberry.hide()
	bush_mixedberry.hide()
	clovers.hide()
	picniccloth.hide()
	picnic_basket.hide()
	sittingbear.hide()
	poppy.hide()
	pond.hide()
	pie.hide()
	restingbear.hide()
	sleepingbear.hide()
	treehouse.hide()
	riddlebear.hide()
	standingbear.hide()
	sando.hide()
	sandobear.hide()
	bush_strawberry.hide()
	honey_icon.hide()
	jamjar.hide()
