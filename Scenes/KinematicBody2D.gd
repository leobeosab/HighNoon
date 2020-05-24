extends KinematicBody2D

var speed = 200
var velocity = Vector2()

func init(pos, dir):
	rotation = dir + 90
	global_position = pos

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var vel = Vector2(speed, 0).rotated(rotation)
	velocity = move_and_slide(vel)
