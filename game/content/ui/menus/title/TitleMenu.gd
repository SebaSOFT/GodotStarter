extends Control

# declaring signals (events)
signal menu_activated

func _ready():
	pass # pass means "Do Nothing on this block/method"

# this is not called grab_focus to not override the default Control class behaviour
func obtain_focus():
	# When the title menu is activated let the item list grab the focus
	$MenuPanel/MenuList.grab_focus()
	# And select the primer item in the list to not annoy the player
	$MenuPanel/MenuList.select(0,true)

# signal receiver for the main menu item list
func _on_Menu_item_activated(index):
	match index:
		0:
			print("New Game")
			emit_signal("menu_activated",0)
		1:
			print("Continue")
			emit_signal("menu_activated",1)
		2:
			print("Options")
			emit_signal("menu_activated",2)
		3:
			get_tree().quit()
