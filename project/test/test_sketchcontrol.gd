#extends "res://addons/gut/test.gd"
#
#var sketchs =load("res://src/ui/sketch_select/SketchSelect.gd").new()
#
#
#func test_SketchSelect():
#	assert_has_signal(sketchs, 'sketch_selected')
#	watch_signals(sketchs)
#	assert_has_method(sketchs,sketchs._select_sketch())
#	sketchs.emit_signal("sketch_selected")
#	assert_signal_emitted(sketchs, "sketch_selected")
#	assert_signal_emitted(sketchs, 'signal_does_not_exist')
#
##func test_assert_called1():
##	var DOUBLE_ME_PATH = 'res://sketch_control/ControlPane.gd'
##	var doubled = double(DOUBLE_ME_PATH).new()
##
#
