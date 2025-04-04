extends Node2D
class_name PassiveIncome

#currency is either "honey" or "pollen"
@export_enum("Honey","Pollen",) var currency_type: int = 0

# how much money per second we give
@export var currency_income : float = 5

func activate_structure():
	if currency_type == 0: #honey
		Global.honey_count += currency_income
	elif currency_type == 1: #pollen
		Global.pollen_count += currency_income
