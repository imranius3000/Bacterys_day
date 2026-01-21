extends CharacterBody2D

const SPEED = 150.0
const STOP_DISTANCE = 5.0 

@onready var anim = $AnimatedSprite2D
@export var killer_1: Node2D 

func _physics_process(_delta):
    if is_instance_valid(killer_1):
        var distance = position.distance_to(killer_1.position)
        
        if distance > STOP_DISTANCE:
            var dir = (killer_1.position - position).normalized()
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
