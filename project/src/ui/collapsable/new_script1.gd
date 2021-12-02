extends MarginContainer

onready var close_btn = $Mcontainer/Panel/MarginContainer/VBoxContainer/Control/CloseButton
onready var getstart = $Mcontainer/Panel/MarginContainer/VBoxContainer/Control2/Button
onready var label = $Mcontainer/Panel/MarginContainer/VBoxContainer/VBoxContainer/Control/RichTextLabel

var compile_log_text_field =null



func load_text_file(path,name):
#		var window = preload("res://src/ui/hud/Openfile.tscn").instance()
#		get_tree().root.add_child(window)
		#compile_log_text_field = RichTextLabel.new()
		#compile_log_text_field.scroll_following = true
		#label.set_text_field(compile_log_text_field)
		
		var rtl = RichTextLabel.new()
		add_child(rtl)
		rtl.bbcode_enabled = true
		var f = File.new()
		f.open(path,1)
		rtl.bbcode_text= f.get_as_text()
		
		
func _on_CloseButton_pressed():
	emit_signal("exited")
	var tween = Tween.new()
	add_child(tween)
	tween.interpolate_property(self, "rect_scale:y", 1, 0, 0.3, Tween.TRANS_CUBIC)
	tween.interpolate_property(self, "modulate:a", 1, 0, 0.15)
	tween.start()
	yield(tween,"tween_all_completed")
	queue_free()


func getstart_press():
	var stext = load_text_file("res://help/compilesketch" + ".txt",name)

	

func _on_version_pressed():
		var stext = load_text_file("res://help/version" + ".txt",name)


func _on_Github_pressed():
	OS.shell_open("https://github.com/ItJustWorksTM/smce-gd/wiki")


func _on_Example_Sketch_pressed():
	var stext = load_text_file("res://help/examplesketch" + ".txt", name)
	
func _on_Configuration_pressed():
	var stext = load_text_file("res://help/configuration" + ".txt",name)


func _on_Button_mouse_entered():
	var stext = load_text_file("res://help/compilesketch" + ".txt",name)
