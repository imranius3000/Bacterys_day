extends CanvasLayer
var settings_menu = preload("res://UI/Main_UI/settings_menu.tscn")


func _ready():
	get_tree().paused = true

func _on_resume_b_pressed():
	get_tree().paused = false
	queue_free()


func _on_settings_b_pressed():
	var settings_menu_instance = settings_menu.instantiate()
	add_child(settings_menu_instance)


func _on_quit_b_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://UI/Main_UI/main_menu.tscn")
