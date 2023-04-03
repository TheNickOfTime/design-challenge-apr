extends Node2D

signal tick

const tick_interval : int = 1

var tick_timer : Timer


func _ready():
	tick_timer = Timer.new()
	tick_timer.wait_time = tick_interval
	tick_timer.timeout.connect(_on_tick_timer_timeout)
	add_child(tick_timer)
	tick_timer.start()


func _process(delta):
	pass


func _on_tick_timer_timeout():
	tick.emit()
