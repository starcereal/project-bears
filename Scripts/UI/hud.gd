extends CanvasLayer
@onready var honey_label: Label = $HoneyLabelContainer/HoneyLabel

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

func _physics_process(_delta: float) -> void:
	honey_label.text = str(roundi(Global.honey_count))

func get_card_from_db():
	var db_list = []
	for i in UpgradesDb.UPGRADES:
		if i in collected_upgrades: #dont repeat collected upgrades
			pass
		elif i in upgrade_options: #dont show if its already in the options
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

func populate_upgrade_container():
	pass
