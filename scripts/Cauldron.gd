extends Node2D

class_name Cauldron

var current_red : bool
var current_green : bool
var current_blue : bool

static var instance : Cauldron

func _init ():
	instance = self

func add_potion (potion : Potion):
	current_red = current_red || potion.red
	current_green = current_green || potion.green
	current_blue = current_blue || potion.blue 

func reset ():
	current_red = false
	current_green = false
	current_blue = false
