extends ColorRect


onready var godotSprite = $Control/GodotAnimatedSprite
onready var tween = $Tween
onready var godotTXT = $Control/Godot
onready var lightFlikceringSound = $LightFlickerSound


func _ready():
	lightFlikceringSound.play()
	tween.interpolate_property(godotTXT, 'modulate', Color(1,1,1,0), Color(1,1,1,1),
	 1, Tween.TRANS_BOUNCE, Tween.EASE_IN_OUT)
	tween.start()


func _on_AnimationPlayTimer_timeout():
	godotSprite.play()

func _on_GodotAnimatedSprite_animation_finished():
	# Here I added camera shake, you will need to do this on your own
	# if you  are interested in how I made a camera shake function, message
	# me or comment on my video.
	$ChangeSceneTimer.start()

func _on_ChangeSceneTimer_timeout():
	print('change scene')
	pass
	# this is called upon completion fo the bootup
	# You should add a get_tree().change_scene() to your title screen
