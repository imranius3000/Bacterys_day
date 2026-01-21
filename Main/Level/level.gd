extends Node
var pause_menu = preload("res://UI/Main_UI/pause_menu.tscn")


func _input(event):
	if event.is_action_pressed("Pause"):
		add_child(pause_menu.instantiate())
