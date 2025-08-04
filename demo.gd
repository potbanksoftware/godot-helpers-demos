extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AudioStreamPlayer.stream_paused = true
	%CheckBoxButton.focus()


func _on_check_box_button_toggled(toggled_on: bool) -> void:
	$AudioStreamPlayer.stream_paused = !toggled_on
