extends Control
@onready var mine_sound: AudioStreamPlayer2D = $ResourceLabelParticle/MineSound
@onready var resource_label_particle: Label = $ResourceLabelParticle

var value

func _ready() -> void:
	resource_label_particle.text = str(roundi(Global.honey_per_click))
	mine_sound.play()

func _on_mine_sound_finished() -> void:
	pass
	#queue_free()


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	queue_free()
