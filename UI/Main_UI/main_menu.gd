extends CanvasLayer



#Кнопка Играть
func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://Main/Level/level.tscn")

#Кнопка Настроек
func _on_settings_button_pressed():
	get_tree().change_scene_to_file("res://UI/main_ui/settings_menu.tscn")

#Кнопка выхода
func _on_quit_button_pressed():
	get_tree().quit()
