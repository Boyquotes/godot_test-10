extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var scene_manager = get_node('/root/SceneManager')


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/Button.connect("button_down", self, 'on_button_clicked')

func on_button_clicked():
	scene_manager.load_scene('LevelOne')
