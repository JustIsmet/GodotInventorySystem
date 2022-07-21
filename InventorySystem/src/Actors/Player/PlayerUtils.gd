extends KinematicBody2D
class_name Player_Utils

# Movement Settings
var direction = Vector2.ZERO
export var speed = Vector2(350, 1000.0)
var velocity = Vector2.ZERO

# Additional Forces
export var gravity = 50.0
var friction = null


#Inventory
var inventory = ["BaseItem"]
var inventory_capacity = 5
