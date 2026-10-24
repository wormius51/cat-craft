extends Node2D

class_name Cat

@export var requirement_string : String

@export var red_required : bool
@export var green_required : bool
@export var blue_required : bool

@export var enter_time : float = 0.5
@export var exit_speed : float = 1

var enter_tween : Tween
var velocity : Vector2
var angular_velocity : float

func play_enter_tween (target : Node2D) -> Signal:
	if enter_tween:
		enter_tween.kill()
	
	enter_tween = get_tree().create_tween()
	enter_tween.tween_property(self, "position", target.position, enter_time).set_trans(Tween.TRANS_SINE)
	
	return enter_tween.finished


	
