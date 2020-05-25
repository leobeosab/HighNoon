extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Bullet = preload("res://Bullet.tscn")
var WaitFlag = false

func get_input():
	var m_rotation = look_at(get_global_mouse_position())
	rotation -= 45
	if Input.is_action_just_pressed("mouse_down"):

		shoot()

	
func shoot():

	var b = Bullet.instance()
	get_parent().add_child(b)
	b.get_child(0).init($arm/Barrel.global_position, rotation - 45)
	

		

# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.

func _physics_process(delta):
	$arm/gun.look_at(get_global_mouse_position())
	get_input()



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
