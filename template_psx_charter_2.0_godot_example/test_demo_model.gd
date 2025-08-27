extends Node3D



var animations : Dictionary[int,String] = {}

func _ready() -> void:
	var i : int = 0
	for a in $metarig/GeneralSkeleton/AnimationPlayer.get_animation_list():
		$Control/OptionButton.add_item(a,i)
		animations[i] = a
		i+=1

func start_rag_doll() -> void:
	$metarig/GeneralSkeleton/PhysicalBoneSimulator3D.physical_bones_start_simulation()

func change_animation(i : int) -> void:
	$metarig/GeneralSkeleton/AnimationPlayer.play(animations[i])
