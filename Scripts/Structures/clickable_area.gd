extends Area2D
class_name ClickableArea


signal mouse_on_structure(mouse_on_object : bool)
signal give_money

var is_mouse_on : bool = false
var click_cooldown : float = .25
var cooldown : float = 0


func _on_mouse_entered() -> void:
	is_mouse_on = true
	mouse_on_structure.emit(true)
	

func _on_mouse_exited() -> void:
	is_mouse_on = false
	mouse_on_structure.emit(false)

func _physics_process(delta: float) -> void:
	cooldown = clampf(cooldown - delta, 0, click_cooldown)
	if is_mouse_on and Input.is_action_pressed("click") and is_zero_approx(cooldown):
		cooldown = click_cooldown
		
		#emit resource particle label
		var new_resource_label : Object = GlobalPreloads.ResourceLabelParticle.instantiate()
		new_resource_label.position = get_local_mouse_position()
		new_resource_label.position.y -= 15
		#get_tree().get_first_node_in_group("hud").add_child(new_resource_label)
		owner.add_child(new_resource_label)
		
		give_money.emit()
