extends Node

const ICON_PATH = "res://Assets/UI/Icons/"

#split into 4
#base tree
#plant life
#bears and animals
#prestige

const UPGRADES = {
	#region root tree
	"roottree": {
		"icon": ICON_PATH + "roottree.png",
		"displayname": "Root Tree",
		"description": "Increase the power of your clicks.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"maxpop": {
		"icon": ICON_PATH + "maxpop.png",
		"displayname": "Max Animal Population",
		"description": "Allows you to habit more animals.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"maxgarden": {
		"icon": ICON_PATH + "maxgarden.png",
		"displayname": "Max Garden Capacity",
		"description": "Upgrade your facilities to increase the number of available plants.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"grove": {
		"icon": ICON_PATH + "grove.png",
		"displayname": "Grove",
		"description": "Upgrade the grove to levels never seen before.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	
	#endregion
	
	#region plant life
	
	"flower1": {
		"icon": ICON_PATH + "flower1.png",
		"displayname": "Poppy",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"flower2": {
		"icon": ICON_PATH + "flower2.png",
		"displayname": "Rose",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"flower3": {
		"icon": ICON_PATH + "flower3.png",
		"displayname": "Sunflower",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"flower4": {
		"icon": ICON_PATH + "flower4.png",
		"displayname": "Carnation",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"flower5": {
		"icon": ICON_PATH + "flower5.png",
		"displayname": "Azalea",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"flower6": {
		"icon": ICON_PATH + "flower6.png",
		"displayname": "Lily",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},

	#endregion
	
	#region animal life
	"bear1": {
		"icon": ICON_PATH + "bear1.png",
		"displayname": "Bear",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"bear2": {
		"icon": ICON_PATH + "bear1.png",
		"displayname": "Bear",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"bear3": {
		"icon": ICON_PATH + "bear1.png",
		"displayname": "Bear",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"bear4": {
		"icon": ICON_PATH + "bear1.png",
		"displayname": "Bear",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"bear5": {
		"icon": ICON_PATH + "bear1.png",
		"displayname": "Bear",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"bear6": {
		"icon": ICON_PATH + "bear1.png",
		"displayname": "Bear",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	#endregion
	
	#region prestige
	"picniccloth": {
		"icon": ICON_PATH + "bear1.png",
		"displayname": "Bear",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"picnictable": {
		"icon": ICON_PATH + "bear1.png",
		"displayname": "Bear",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"picnicbasket": {
		"icon": ICON_PATH + "bear1.png",
		"displayname": "Bear",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	"picnicsando": {
		"icon": ICON_PATH + "bear1.png",
		"displayname": "Bear",
		"description": "Get your pollen.",
		"costttype1": "honey",
		"basecost1": 100,
		"costttype2": "",
		"basecost2": 0,
	},
	#endregion
}
