tool
extends EditorPlugin

func _enter_tree():
	add_custom_type("Water", "Sprite", preload("2d_water.gd"), preload("icon.png"));

func _exit_tree():
	remove_custom_type("Water");

