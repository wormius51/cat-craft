extends Node2D

class_name Potion

@export var red : bool
@export var green : bool
@export var blue : bool

func add_to_cauldron ():
	Cauldron.instance.add_potion(self)
