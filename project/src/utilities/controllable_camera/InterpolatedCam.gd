#
#  InterpolatedCam.gd
#  
#  Made by group 13


extends Camera

export (float) var speed = 4.0 
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
		var cam := node as Camera
		if (cam):
			if (cam.get_projection() == get_projection()):

				var new_near = lerp(near, cam.get_znear(), nDelta)
				var new_far = lerp(far, cam.getzfar(), nDelta)

				if (cam.get_projection() == PROJECTION_ORTHOGONAL):
					var size = lerp(get_size(), cam.get_size(), speed * delta)
					set_orthogonal(size, new_near, new_far)
				else:
					var fov = lerp(get_fov(), cam.get_fov(), speed * delta)
					set_perspective(fov, new_near, new_far)
	
