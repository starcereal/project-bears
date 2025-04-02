extends Control

@onready var buy_sound: AudioStreamPlayer2D = $BuySound
@onready var upgrade_name: Label = $UpgradeLabel
@onready var hud = get_tree().get_first_node_in_group("hud")
@onready var upgrade_icon: Sprite2D = $UpgradeIcon
@onready var cost_label: Label = $CostLabel
@onready var cost_icon: Sprite2D = $CostIcon

var item = null

signal selected_upgrade(upgrade)

func _ready() -> void:
	connect("selected_upgrade", Callable(hud, "upgrade_character"))
	if item == null:
		item = "honey1"
	
	if UpgradesDb.UPGRADES[item]["costttype"] == "honey":
		cost_icon.texture = preload("res://Assets/UI/Icons/honeyicon.png")
	elif UpgradesDb.UPGRADES[item]["costttype"] == "pollen":
		cost_icon.texture = preload("res://Assets/UI/Icons/pollenicon.png")
	
	upgrade_name.text = UpgradesDb.UPGRADES[item]["displayname"]
	upgrade_icon.texture = load(UpgradesDb.UPGRADES[item]["icon"])
	cost_label.text = str(UpgradesDb.UPGRADES[item]["basecost"])
	

func _on_texture_button_pressed() -> void:
	
	
	hide()
	buy_sound.play()


func _on_buy_sound_finished() -> void:
	queue_free()
