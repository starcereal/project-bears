extends CanvasLayer
@onready var honey_label: Label = $HoneyLabel
@onready var tab_container: TabContainer = $UpgradeContainer/TabContainer

#TODO Optimize?
# do we say fuggit and update the text every frame?
# theres nothing heavy in our game

func _physics_process(_delta: float) -> void:
	honey_label.text = str(roundi(Global.honey_count))


func _on_base_tree_tab_btn_pressed() -> void:
	tab_container.current_tab = 0


func _on_bears_tab_btn_pressed() -> void:
	tab_container.current_tab = 1


func _on_picnic_tab_btn_pressed() -> void:
	tab_container.current_tab = 2


func _on_prestige_tab_btn_pressed() -> void:
	tab_container.current_tab = 3
