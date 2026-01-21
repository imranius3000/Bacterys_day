extends CanvasLayer
@onready var resolution_button = %ResolutionButton



#Закрыть настройки
func _on_return_button_pressed():
	queue_free()

#Вызваем сразу функцию обновления настроек
func _ready():
	update_options()

#Функция для обновлений настроек, при изменение звука или режима экрана
func update_options():
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		resolution_button.text = "FULL SCREEN"
	else:
		resolution_button.text = "WINDOWED"


#Изменить режим окна
func _on_resolution_button_pressed():
	var mode = DisplayServer.window_get_mode()
	if mode != DisplayServer.WINDOW_MODE_FULLSCREEN:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else: 
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	update_options()
