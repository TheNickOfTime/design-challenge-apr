extends Node2D


func _ready():
	TimeManager.tick.connect(_on_tick)


func _process(delta):
	pass


func _on_tick():
	print("ticking")
