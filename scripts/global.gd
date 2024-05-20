extends Node

var render_mode: bool = true
var res_mode: bool = true

func _init():
	RenderingServer.set_debug_generate_wireframes(true)

func _process(_delta):
	if Input.is_action_just_pressed("switch_rendering"):
		if render_mode:
			get_viewport().debug_draw = Viewport.DEBUG_DRAW_WIREFRAME
		else:
			get_viewport().debug_draw = Viewport.DEBUG_DRAW_DISABLED
		render_mode = !render_mode
	if Input.is_action_just_pressed("main_level"):
		get_tree().change_scene_to_file("res://scenes/main.tscn")
	if Input.is_action_just_pressed("second_level"):
		get_tree().change_scene_to_file("res://scenes/occlusion.tscn")
	if Input.is_action_just_pressed("switch_res"):
		if res_mode:
			get_viewport().content_scale_size = Vector2(float(896),float(504))
		else:
			get_viewport().content_scale_size = Vector2(float(1920),float(1080))
		res_mode = !res_mode
