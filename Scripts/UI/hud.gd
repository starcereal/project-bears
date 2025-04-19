extends CanvasLayer
@onready var honey_label: Label = $HoneyLabelContainer/HoneyLabel
@onready var upgrade_card : Object = GlobalPreloads.upgrade_card
@onready var upgrade_container: HBoxContainer = $UpgradeContainer/UpgradeContainerBackground/UpgradeContainer


#TODO card pulling mechanics
# create a deck
# when player clicks card, pull next card from deck.
	#if player does not have the right prerequisite, skip card and go next
# instantiate new card based off database values of card
# remove card from deck array
# add card to collected cards


#TODO Optimize?
# do we say fuggit and update the text every frame?
# theres nothing heavy in our game

#UPGRADES
var collected_upgrades = []
var collected_upgrade_card_types = []
var upgrade_options = []
var current_options : int = 0
var structure_list
var big_tree

func _ready() -> void:
	populate_upgrade_container()
	big_tree = get_tree().get_first_node_in_group("bigtree")
	structure_list = get_tree().get_first_node_in_group("structurelist")

func _physics_process(_delta: float) -> void:
	honey_label.text = str(roundi(Global.honey_count))


func get_card_from_db():
	var db_list = []
	var db_counter = 0
	for i in UpgradesDb.UPGRADES:
		if i in collected_upgrades: #dont repeat collected upgrades
			pass
		elif i in upgrade_options: #dont show if its already in the options
			db_counter += 1
			pass
		elif UpgradesDb.UPGRADES[i]["prerequisite"].size() > 0:
			var to_add = true
			for n in UpgradesDb.UPGRADES[i]["prerequisite"]:
				if not n in collected_upgrades:
					to_add = false
			if to_add:
				db_list.append(i)
		else:
			db_list.append(i)
	if db_list.size() > 0:
		var next_item = db_list[0]
		upgrade_options.append(next_item)
		return next_item
	else:
		return null


func draw_from_deck():
	pass

func populate_upgrade_container():
	while current_options < 4 and collected_upgrades.size() != UpgradesDb.UPGRADES.size():
		var new_upgrade_card = upgrade_card.instantiate()
		new_upgrade_card.item = get_card_from_db()
		
		upgrade_container.add_child(new_upgrade_card)
		current_options += 1

func upgrade_hud(upgrade):
	current_options -= 1
	collected_upgrades.append(upgrade)
	match upgrade:
		"poppy":
			Global.honey_per_second += 1
		"picniccloth":
			Global.honey_per_second += 5
		"music":
			Global.honey_per_second += 5
		"pond":
			Global.honey_per_second += 5
		"sittingbear":
			Global.honey_per_click += 3
		"sunlight":
			Global.honey_per_second += 6
		"blueberry":
			Global.honey_per_second += 8
		"cloverfield":
			Global.honey_per_second += 11
		"treelevel2":
			#level up bar?
			big_tree.change_tree_sprite(2)
		"jamjar":
			Global.honey_per_second += 14
		"wind":
			Global.honey_per_second += 17
		"beehive":
			Global.honey_per_second += 20
		"picnicbasket":
			Global.honey_per_click *= 1.5
		"pie":
			Global.honey_per_second += 22
		"sando":
			Global.honey_per_second += 31
		"sandobear":
			Global.honey_per_second += 40
		"mixedberry":
			Global.honey_per_second += 50
		"treelevel3":
			Global.honey_per_click *= 2
			big_tree.change_tree_sprite(3)
		"coolmusic":
			Global.honey_per_second += 60
		"honeypot":
			Global.honey_per_second += 65
		"strawberry":
			Global.honey_per_second += 80
		"picniccloth2":
			Global.honey_per_second += 100
		"sleepingbear":
			Global.honey_per_click += 20
		"treelevel4":
			Global.honey_per_click *= 2
			big_tree.change_tree_sprite(4)
		"winner":
			pass
	populate_upgrade_container()
	#here is where the magic happens



func _on_income_timer_timeout() -> void:
	Global.honey_count += Global.calc_income_per_sec(Global.honey_per_second, Global.hps_multiplier)
