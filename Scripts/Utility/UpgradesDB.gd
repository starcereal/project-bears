extends Node

const ICON_PATH = "res://Assets/UI/Icons/"

#split into 4
#base tree
#plant life
#bears and animals
#prestige

const UPGRADES = {
	#region root tree
	"honey1": {
		"icon": ICON_PATH + "honeyicon.png",
		"displayname": "Cool Honey 1",
		"description": "Increase the power of your clicks.",
		"costttype": "pollen",
		"basecost": 25,
		"prerequisite": []
	},
	"pollen1": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Pollen Fever",
		"description": "Increase the power of your clicks.",
		"costttype": "honey",
		"basecost": 30,
		"prerequisite": []
	},
	"honey2": {
		"icon": ICON_PATH + "honeyicon.png",
		"displayname": "Cool Honey 1",
		"description": "Increase the power of your clicks.",
		"costttype": "pollen",
		"basecost": 30,
		"prerequisite": []
	},
	"pollen2": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "yum pollen",
		"description": "Increase the power of your clicks.",
		"costttype": "honey",
		"basecost": 100,
		"prerequisite": []
	},
	"honey3": {
		"icon": ICON_PATH + "honeyicon.png",
		"displayname": "Cool Honey x",
		"description": "Increase the power of your clicks.",
		"costttype": "pollen",
		"basecost": 45,
		"prerequisite": []
	},
	"pollen3": {
		"icon": ICON_PATH + "pollenicon.png",
		"displayname": "Cool flower 3",
		"description": "Drops a cool flower.",
		"costttype": "honey",
		"basecost": 100,
		"prerequisite": []
	},
	#endregion
}
