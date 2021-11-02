#
#  InterpolatedCam.gd
#  
#  Made by group 13


extends Camera

class_name InterpCam

export (float) var speed = 15.0 
export (NodePath) var target = NodePath("") setget set_target
export (bool) var enabled = true setget set_interpolation_enabled, is_interpolation_enabled

func _ready():
	if ! get_path():
		return 

func set_interpolation_enabled(value: bool):
		if (enabled == value):
			return
		enabled = value

func is_interpolation_enabled():
	return enabled


func set_target(targ: Spatial) -> void:
	if !is_instance_valid(targ):
		return
	target = get_path_to(targ)

func _physics_process(delta) -> void:
	if ! enabled:
		return

	if( has_node(target) ):
		var node = get_node(target)	
		var nDelta = speed * delta

		var target_xform = node.get_global_transform()
		var local_transform = get_global_transform()
		local_transform = local_transform.interpolate_with(target_xform, nDelta)
		set_global_transform(local_transform)
	
