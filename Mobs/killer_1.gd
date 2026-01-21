extends CharacterBody2D

const SPEED = 150.0
const STOP_DISTANCE = 5.0 

@onready var anim = $AnimatedSprite2D
@export var Bactery1: Node2D 

func _physics_process(delta: float) -> void:
    if is_instance_valid(Bactery1):
        var distance = position.distance_to(Bactery1.position)
        
        if distance > STOP_DISTANCE:
            var dir = (Bactery1.position - position).normalized()
            velocity = dir * SPEED
            
            anim.play("Run")
            if dir.x != 0:
                anim.flip_h = dir.x < 0
        else:
            stop_moving()
    else:
        stop_moving()

    
    move_and_slide()

func stop_moving():
    velocity = Vector2.ZERO
    anim.play("Idle")
