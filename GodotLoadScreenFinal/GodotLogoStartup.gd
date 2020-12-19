extends AnimatedSprite


onready var particles = $Particles2D


func _on_AnimatedSprite_animation_finished():
	particles.set_emitting(true)
