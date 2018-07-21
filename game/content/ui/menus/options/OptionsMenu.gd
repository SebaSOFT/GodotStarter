extends Control

signal options_back

func _ready():
	refresh_items()

# this is not called grab_focus to not override the default Control class behaviour
func obtain_focus():
	# When the options menu is activated let the option list grab the focus
	$MenuPanel/OptionsList.grab_focus()
	# And select the primer item in the list to not annoy the player
	$MenuPanel/OptionsList.select(0,true)
	
# refresh the list items based on the system global preferences
func refresh_items():
	if globals.music_enabled:
		$MenuPanel/OptionsList.set_item_text(0,"Music: ON")
	else:
		$MenuPanel/OptionsList.set_item_text(0,"Music: OFF")
	if globals.sound_enabled:
		$MenuPanel/OptionsList.set_item_text(1,"Sounds: ON")
	else:
		$MenuPanel/OptionsList.set_item_text(1,"Sounds: OFF")

# set the global preferences or return to main menu by activating a signal
func _on_ItemList_item_activated(index):
	match index:
		0:
			globals.music_enabled=!globals.music_enabled
			refresh_items()
		1:
			globals.sound_enabled=!globals.sound_enabled
			refresh_items()
		2:
			emit_signal("options_back")
