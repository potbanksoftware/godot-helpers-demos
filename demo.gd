extends Node2D

const UPBEAT_LOOP = preload("res://Upbeat short Music Loop Vorbis oog/Upbeat Loop_2.ogg")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	AmbientMusicPlayer.change_track(UPBEAT_LOOP)
	AmbientMusicPlayer.stream_paused = true
	%CheckBoxButton.focus()


func _on_check_box_button_toggled(toggled_on: bool) -> void:
	AmbientMusicPlayer.stream_paused = !toggled_on
