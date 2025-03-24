extends Node2D
@onready var mine_sound: AudioStreamPlayer2D = $ResourceLabelParticle/MineSound

func _ready() -> void:
	mine_sound.play()

func _on_mine_sound_finished() -> void:
	pass
	#queue_free()


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	queue_free()
