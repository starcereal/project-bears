extends CanvasLayer
@onready var honey_label: Label = $HoneyLabel

#TODO Optimize?
# do we say fuggit and update the text every frame?
# theres nothing heavy in our game

func _physics_process(delta: float) -> void:
	honey_label.text = str(roundi(Global.honey_count))
