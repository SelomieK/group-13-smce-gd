extends "res://addons/gut/test.gd"

func test_Sketchmanager():
	var sketchmanage =load("res://src/ui/master_control/SketchManager.gd").new()
	assert_has_signal(sketchmanage, 'sketch_added')
	watch_signals(sketchmanage)
	var path = "C:/New folder/distancecar/distancecar.ino"
	var sketch= Sketch.new()
	var uuid = sketch.get_uuid()
	print("EXAMPLE", uuid)
	assert_not_null(uuid)
	var makesketch = sketchmanage.make_sketch(path)
	var source = sketch.get_source(makesketch)
	print("EXAMPLESECOND", source)
	assert_not_null(source)

