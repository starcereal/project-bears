extends Node

# hold currency here; hold as float, show as int
var honey_count : float = 0
var pollen_count : float = 0
var diamond_count : float = 0

# everytime a player upgrades, increase cost by this much
func new_cost_formula(base_cost : float, structure_level : int):
	var new_cost : float
	
	#this makes it easier to purchase upgrades at a lower levels
	if structure_level <= 15:
		new_cost = floorf((5 + structure_level) * pow(1.06, structure_level - 1))
	else:
		new_cost = floorf((20 + structure_level) * pow(1.06, structure_level - 1))
	
	return new_cost

# hold levels of each structure here
var level_big_tree = 1
