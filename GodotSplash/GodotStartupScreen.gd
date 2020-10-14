extends Node2D


onready var godotSprite = $GodotAnimatedSprite
onready var tween = $Tween
onready var godotTXT = $Control/Godot
onready var lightFlikceringSound = $LightingEffect


func _ready():
	lightFlikceringSound.play()
	tween.interpolate_property(godotTXT, 'modulate', Color(1,1,1,0), Color(1,1,1,1),
	 1, Tween.TRANS_BOUNCE, Tween.EASE_IN_OUT)
	tween.start()


func _on_AnimationPlayTimer_timeout():
	godotSprite.play()

func _on_GodotAnimatedSprite_animation_finished():
#	I added Camera shake here, bbut you'll need to add that yourself!
	$ChangeSceneTimer.start()

func _on_ChangeSceneTimer_timeout():
		print("insert title scene for transition")
		pass
#		get_tree().change_scene()
