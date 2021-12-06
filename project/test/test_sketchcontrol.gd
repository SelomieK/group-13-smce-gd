extends "res://addons/gut/test.gd"

var sketchs =load("res://src/ui/sketch_select/SketchSelect.gd").new()


func test_SketchSelect():
	assert_has_signal(sketchs, 'sketch_selected')
	watch_signals(sketchs)
	assert_has_method(sketchs,'_select_sketch')
	sketchs.emit_signal("sketch_selected")
	assert_signal_emitted(sketchs, "sketch_selected")
	assert_signal_emitted(sketchs, 'signal_does_not_exist')

func test_controlpane():
	var cp= load('res://src/ui/sketch_control/ControlPane.gd').new()
	#var m = cp.init(cp._sketch,cp._toolchain)
	var sketch ="C:/New folder/distancecar/distancecar.ino"
	var board = Board.new()
	var attach = board.attach_sketch(sketch)
	assert_not_null(attach)
	
	#var attach_res = board.attach_sketch(sketch)
	#assert_not_null(cp, path)

	#assert_has_method(cp,'init.getsource')


