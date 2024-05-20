extends SpotLight3D

func _process(_delta):
	transform.basis = transform.basis.rotated(Vector3.UP, deg_to_rad(5))
