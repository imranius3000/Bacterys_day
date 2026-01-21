extends CanvasLayer
@onready var resolution_button = %ResolutionButton




func _on_return_button_pressed():
	get_tree().change_scene_to_file("res://UI/main_ui/main_menu.tscn")

func _ready():
	update_options()
	
func update_options():
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		resolution_button.text = "FULL SCREEN"
	else:
		resolution_button.text = "WINDOWED"



func _on_resolution_button_pressed():
	var mode = DisplayServer.window_get_mode()
	if mode != DisplayServer.WINDOW_MODE_FULLSCREEN:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else: 
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	update_options()
