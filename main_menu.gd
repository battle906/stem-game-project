class_name MainMenu
extends Node2D
@onready var start_button = $buttonmanager/start as Button
@onready var exit_button = $buttonmanager/quit as Button
@onready var options_button = $buttonmanager/options as Button
@onready var main_game = preload("res://main_game.tscn") as PackedScene
@onready var options_menu = preload("res://options.tscn") as PackedScene

func free() -> void:
	handle_connecting_signals()

func on_start_pressed():
	get_tree().change_scene_to_packed(main_game)


func on_options_pressed():
	get_tree().change_scene_to_file("res://options.tscn")


func on_quit_pressed():
	get_tree().quit()


func handle_connecting_signals() -> void:
	start_button.button_down.connect(on_start_pressed)
	options_button.button_down.connect(on_options_pressed)
	exit_button.button_down.connect(on_quit_pressed)
