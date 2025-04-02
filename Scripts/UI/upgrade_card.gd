extends Control
@onready var card_sound: AudioStreamPlayer2D = $CardSound


func _on_texture_button_pressed() -> void:
	hide()
	card_sound.play()


func _on_card_sound_finished() -> void:
	queue_free()
