extends MarginContainer

onready var close_btn = $Panel/MarginContainer/VBoxContainer/CloseButton
onready var label = $Panel/MarginContainer/VBoxContainer/MarginContainer/Control/RichTextLabel

var compile_log_text_field =null


func load_text_file(path,name,name2):
		var f = File.new()
		f.open(path,1)
		label.text = f.get_as_text()
		if name2 == "compile":
			var t1 = Texture.new()
			t1 =load("res://help/1.png")
			label.add_image(t1,290,250)
			label.add_text("   ")
			var t2 = Texture.new()
			t2 =load("res://help/2.png")
			label.add_image(t2,300,250)
			label.add_text("   ")
			var t3 = Texture.new()
			t3 =load("res://help/3.png")
			label.add_image(t3,290,250)
			

func _ready():
	 label.bbcode_enabled =true
	 label.bbcode_text = "[b][color=green]%s[/color][/b]" %  "Welcome to SMCE-gd Help - A  frontend for libSMCE made with godot using gdnative \n"
	 var t4 = Texture.new()
	 t4 =load("res://help/logo.png")
	# label.add_image(t4,290,250)
	 label.add_image(t4,910,500)
	 

	

func _on_example_mouse_entered():
	var name2 = "example"
	var stext = load_text_file("res://help/examplesketch" + ".txt", name,name2)


func _on_upgrade_mouse_entered():
	var name2 = "upgrade"
	var stext = load_text_file("res://help/version" + ".txt",name,name2)
	


func _on_compile_mouse_entered():
	var name2 = "compile"
	var stext = load_text_file("res://help/compilesketch" + ".txt",name, name2)





func _on_link_pressed():
		OS.shell_open("https://github.com/ItJustWorksTM/smce-gd/wiki")


func _on_getstarted_mouse_entered():
	label.clear()
	_ready()


func _on_CloseButton_pressed():
	emit_signal("exited")
	var tween = Tween.new()
	add_child(tween)
	tween.interpolate_property(self, "rect_scale:y", 1, 0, 0.3, Tween.TRANS_CUBIC)
	tween.interpolate_property(self, "modulate:a", 1, 0, 0.15)
	tween.start()
	yield(tween,"tween_all_completed")
	queue_free()
