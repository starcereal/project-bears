extends Label

var is_crit : bool = false
@onready var crit_icon = $CritIcon
@onready var animation_player = $AnimationPlayer

#var damage_scale : float
#
#func _ready():
	#scale *= 1 * (1+(damage_scale*.01))

func _on_animation_player_animation_finished(_anim_name):
	queue_free()

func _ready():
	if is_crit:
		animation_player.play("show_crit")
		crit_icon.show()
		self_modulate = "orange"
		z_index += 1
		
	else:
		animation_player.play("show_damage")
