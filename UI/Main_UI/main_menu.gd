extends CanvasLayer
var settings_menu = preload("res://UI/Main_UI/settings_menu.tscn")


#Кнопка Играть
func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://Main/Level/level.tscn")

#Кнопка Настроек
func _on_settings_button_pressed():
	var settings_menu_instance = settings_menu.instantiate()
	add_child(settings_menu_instance)

#Кнопка выхода
func _on_quit_button_pressed():
	get_tree().quit()
