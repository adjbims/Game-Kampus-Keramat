extends CharacterBody2D

@export var speed: int = 30
@onready var anim = get_node("AnimatedSprite2D")
@onready var anim2 = get_node("AnimatedSprite2D2")

func _ready():
	anim.play("idle")
	anim2.play("idle")
	
func handleInput():
	var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if moveDirection:
		velocity = moveDirection * speed
		if Input.is_action_just_pressed("ui_right"):
			$AnimatedSprite2D.play("right")
			$AnimatedSprite2D2.play("right")
		elif Input.is_action_just_pressed("ui_left"):
			$AnimatedSprite2D.play("left")
			$AnimatedSprite2D2.play("left")
		elif Input.is_action_just_pressed("ui_up"):
			$AnimatedSprite2D.play("up")
			$AnimatedSprite2D2.play("up")
		elif Input.is_action_just_pressed("ui_down"):
			$AnimatedSprite2D.play("down")
			$AnimatedSprite2D2.play("down")
	else:
		velocity = Vector2(0, 0)
		anim.play("idle")
		anim2.play("idle")
			
func _physics_process(delta):
	handleInput()
	move_and_slide()
