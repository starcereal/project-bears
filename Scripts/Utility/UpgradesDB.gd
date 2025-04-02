extends Node

const ICON_PATH = "res://Assets/UI/Icons/"

#split into 4
#base tree
#plant life
#bears and animals
#prestige

const UPGRADES = {
	#region root tree
	"poppy": {
		"icon": ICON_PATH + "honeyicon.png",
		"displayname": "Poppy",
		"description": "Increase the power of your clicks.",
		"costttype": "honey",
		"basecost": 25,
		"prerequisite": []
	},
	"picniccloth": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Picnic Cloth",
		"description": "Increase the power of your clicks.",
		"costttype": "honey",
		"basecost": 30,
		"prerequisite": []
	},
	"music": {
		"icon": ICON_PATH + "honeyicon.png",
		"displayname": "Music",
		"description": "Increase the power of your clicks.",
		"costttype": "pollen",
		"basecost": 80,
		"prerequisite": []
	},
	"sittingbear": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "sittingbear",
		"description": "Increase the power of your clicks.",
		"costttype": "honey",
		"basecost": 100,
		"prerequisite": []
	},
	"sunlight": {
		"icon": ICON_PATH + "honeyicon.png",
		"displayname": "Sunlight",
		"description": "Increase the power of your clicks.",
		"costttype": "pollen",
		"basecost": 45,
		"prerequisite": []
	},
	"cloverfield": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Clover Field",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 100,
		"prerequisite": []
	},
	"treelevel2": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Level 2 Tree",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 200,
		"prerequisite": []
	},
	"wind": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Wind",
		"description": "Drops a cool flower.",
		"costttype": "pollen",
		"basecost": 75,
		"prerequisite": []
	},
	"grass": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Grass",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 500,
		"prerequisite": []
	},
	"picnicbasket": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Picnic Basket",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 750,
		"prerequisite": []
	},
	"sandobear": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Sando Bear",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 1005,
		"prerequisite": []
	},
	"treelevel3": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Level 3 Tree",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 1800,
		"prerequisite": ["treelevel2"]
	},
	"coolmusic": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Cool Music",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 755,
		"prerequisite": []
	},
	"honeypot": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Honey Pot",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 10000,
		"prerequisite": []
	},
	"clicksound": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Cool Click Sound",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 10000,
		"prerequisite": []
	},
	"picnictable": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Picnic Table",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 10000,
		"prerequisite": []
	},
	"sleepingbear": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Sleeping Bear",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 10000,
		"prerequisite": []
	},
	"treelevel4": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Honey Pot",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 10000,
		"prerequisite": ["treelevel3"]
	},
	"winner": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "YOU WIn",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 10000,
		"prerequisite": ["treelevel4"]
	},
	#endregion
}
