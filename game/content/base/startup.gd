extends Node

# variable containing the menu state
var menu_state = 0 # 0-splash, 1-main menu, 2-options menu

# set this node as processing input events and display the splash
func _ready():
	# Establish that this node will handle stuff in frame by frame
	set_process(true)
	# Display the Node/Scene necessary for this moment (splash)
	_display_menu()

# WARNING, don't put too much stuff here, this runs every frame
func _process(delta):
	# if the user press cancel (Escape) and we are in splash, just go to title menu
	if Input.is_action_pressed("ui_cancel"):
		match menu_state:
			0: # Skip annoying studios screens
				_end_splash()
			_: # can be used to go back from the options menu by hitting escape
				menu_state=1
				_display_menu()

# shows and hides parts of the node tree depending on a variable
func _display_menu():
	match menu_state:
		0: # splash should be visible
			$SplashScreens.visible=true
			$TitleMenu.visible=false
			$OptionsMenu.visible=false
			$SplashScreens/anima.play("splash")
		1: # title (main) menu should be visible
			$SplashScreens.visible=false
			$TitleMenu.visible=true
			$OptionsMenu.visible=false
			$TitleMenu.obtain_focus() 
		2: # options menu should be visible
			$SplashScreens.visible=false
			$TitleMenu.visible=false
			$OptionsMenu.visible=true
			$OptionsMenu.obtain_focus()

# Detects propagated end of animation signal
func _on_SplashScreens_finished_Loop():
	print("finished")
	_end_splash()

# Detects when an item is selected on the main menu
func _on_TitleMenu_menu_activated(menu_index):
	var changed=false
	match menu_index:
		2:
			menu_state=2
			changed=true
	if changed:
		_display_menu()

# Detects when the options menued finished and goes back to the main menu
func _on_OptionsMenu_options_back():
	menu_state=1
	_display_menu()

func _end_splash():
	menu_state=1
	$SplashScreens/anima.stop()
	_display_menu()
