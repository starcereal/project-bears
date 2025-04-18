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
		"icon": ICON_PATH + "poppy.png",
		"displayname": "Poppy",
		"description": "Lay the foundation.",
		"costttype": "honey",
		"basecost": 20,
		"prerequisite": [],
		"scale": .45
	},
	"picniccloth": {
		"icon": ICON_PATH + "picniccloth.png",
		"displayname": "Picnic Cloth",
		"description": "Increase the power of your clicks.",
		"costttype": "honey",
		"basecost": 35,
		"prerequisite": [],
		"scale": .25
	},
	"music": {
		"icon": ICON_PATH + "petting_cursor.png",
		"displayname": "Music",
		"description": "Don't stop that music.",
		"costttype": "honey",
		"basecost": 50,
		"prerequisite": [],
		"scale": 1
	},
	"pond": {
		"icon": ICON_PATH + "pond.png",
		"displayname": "Pond",
		"description": "Increase the power of your clicks.",
		"costttype": "honey",
		"basecost": 80,
		"prerequisite": [],
		"scale": .2
	},
	"sittingbear": {
		"icon": ICON_PATH + "sittingbear.png",
		"displayname": "Sitting Bear",
		"description": "The wilds needs more sitters..",
		"costttype": "honey",
		"basecost": 105,
		"prerequisite": [],
		"scale": .4
	},
	"sunlight": {
		"icon": ICON_PATH + "pet_cursor.png",
		"displayname": "Sunlight",
		"description": "Let the sun shine upon you, warrior.",
		"costttype": "honey",
		"basecost": 265,
		"prerequisite": [],
		"scale": 1
	},
	"blueberry": {
		"icon": ICON_PATH + "bush_blueberry.png",
		"displayname": "Blueberry",
		"description": "Increase the power of your clicks.",
		"costttype": "honey",
		"basecost": 333,
		"prerequisite": [],
		"scale": .3
	},
	"cloverfield": {
		"icon": ICON_PATH + "clovers.png",
		"displayname": "Clover Field",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 500,
		"prerequisite": [],
		"scale": .3
	},
	"treelevel2": {
		"icon": ICON_PATH + "TreeLeaves.png",
		"displayname": "Level 2 Tree",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 600,
		"prerequisite": [],
		"scale": .075

	},
	"jamjar": {
		"icon": ICON_PATH + "jamjar.png",
		"displayname": "Jam Jar",
		"description": "Delicious berry JAM.",
		"costttype": "honey",
		"basecost": 750,
		"prerequisite": [],
		"scale": .7
	},
	"wind": {
		"icon": ICON_PATH + "pet_cursor.png",
		"displayname": "Wind",
		"description": "Wind to blow honey to you.",
		"costttype": "honey",
		"basecost": 850,
		"prerequisite": [],
		"scale": 1
	},
	"beehive": {
		"icon": ICON_PATH + "beehive.png",
		"displayname": "Beehive",
		"description": "SUMMON THE BEES.",
		"costttype": "honey",
		"basecost": 1000,
		"prerequisite": [],
		"scale": .6
	},
	"pie": {
		"icon": ICON_PATH + "pie.png",
		"displayname": "Riddler Pie",
		"description": "A mix of honey and fruits combine to create something yummy.",
		"costttype": "honey",
		"basecost": 1175,
		"prerequisite": [],
		"scale": .8
	},
	"picnicbasket": {
		"icon": ICON_PATH + "picnic_basket.png",
		"displayname": "Picnic Basket",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 1337,
		"prerequisite": [],
		"scale": .65
	},
	"sando": {
		"icon": ICON_PATH + "sando.png",
		"displayname": "Sando",
		"description": "Whats a picnic w/o sando?",
		"costttype": "honey",
		"basecost": 1450,
		"prerequisite": [],
		"scale": 1
	},
	"sandobear": {
		"icon": ICON_PATH + "sandobear.png",
		"displayname": "Sando Bear",
		"description": "The bear hungers for sando.",
		"costttype": "honey",
		"basecost": 1738,
		"prerequisite": [],
		"scale": .5
	},
	"mixedberry": {
		"icon": ICON_PATH + "bush_mixedberry.png",
		"displayname": "Mixed Berries",
		"description": "Increase the power of your clicks.",
		"costttype": "honey",
		"basecost": 1993,
		"prerequisite": [],
		"scale": .25
	},
	"treelevel3": {
		"icon": ICON_PATH + "TreeBuds.png",
		"displayname": "Level 3 Tree",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 2200,
		"prerequisite": ["treelevel2"],
		"scale": .075
	},
	"coolmusic": {
		"icon": ICON_PATH + "poppy.png",
		"displayname": "Cool Music",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 2500,
		"prerequisite": [],
		"scale": .45
	},
	"honeypot": {
		"icon": ICON_PATH + "honey_icon.png",
		"displayname": "Honey Pot",
		"description": "A place to store honey.",
		"costttype": "honey",
		"basecost": 2750,
		"prerequisite": [],
		"scale": .8
	},
	"strawberry": {
		"icon": ICON_PATH + "bush_strawberry.png",
		"displayname": "Strawberry",
		"description": "Increase the power of your clicks.",
		"costttype": "honey",
		"basecost": 3000,
		"prerequisite": [],
		"scale": .35
	},
	"clicksound": {
		"icon": ICON_PATH + "pet_cursor.png",
		"displayname": "Cool Click Sound",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 3005,
		"prerequisite": [],
		"scale": 1
	},
	"picniccloth2": {
		"icon": ICON_PATH + "picniccloth.png",
		"displayname": "Cooler Picnic Cloth",
		"description": "Come hang around a while.",
		"costttype": "honey",
		"basecost": 3200,
		"prerequisite": [],
		"scale": .25
	},
	"sleepingbear": {
		"icon": ICON_PATH + "sleepingbear.png",
		"displayname": "Sleeping Bear",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 4000,
		"prerequisite": [],
		"scale": .4
	},
	"treelevel4": {
		"icon": ICON_PATH + "TreeBloom.png",
		"displayname": "Level 4 Tree",
		"description": "In full bloom..",
		"costttype": "honey",
		"basecost": 4500,
		"prerequisite": [],
		"scale": .075
	},
	"winner": {
		"icon": ICON_PATH + "riddlebear.png",
		"displayname": "Riddle Bear (YOU WIN)",
		"description": "The Riddle Bear has an answer for you.",
		"costttype": "honey",
		"basecost": 5500,
		"prerequisite": ["treelevel4"],
		"scale": .3
	},
	#endregion
}
