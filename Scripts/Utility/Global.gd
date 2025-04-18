extends Node

# hold currency here; hold as float, show as int
var honey_count : float = 0
var pollen_count : float = 0
var diamond_count : float = 0

# hold total money per second, we can run it through HUD
# to simplify multiplier formula
var honey_per_second : float = 0
var pollen_per_second : float = 0
var diamond_per_second : float = 0

var honey_per_click : float = 1

var hps_multiplier : float = 0
var pps_multiplier : float = 0
var dds_multiplier : float = 0

func calc_income_per_sec(income: float, muliplier: float) -> float:
	var calculated_income
	calculated_income = income * (1 + muliplier)
	return calculated_income
