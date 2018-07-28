# Godot Template Starter

This package pretends to be a startup point on how to structure projects using the [Godot Game engine](http://godotengine.org)

----

> *NOTE:* This project structure is based (losely) in the proposals of the [Official Documentation](http://docs.godotengine.org/en/stable/getting_started/workflow/project_setup/project_organization.html) on project structure and the [Assets Naming Convention](https://wiki.unrealengine.com/Assets_Naming_Convention) from Unreal Engine to create a comprehensive set of folders. 
> The premise is always: **GROUPING ASSETS BY USAGE, NOT BY TYPE** since the latter one doesn't scale on big projects.

----
## Video explanation

[![A video explaining how to move arround the project and some Godot 3 basics](http://img.youtube.com/vi/LUKzKMOc72M/0.jpg)](http://www.youtube.com/watch?v=LUKzKMOc72M)

## Directory structure

```
GodotStarter.
|   .gitattributes - Make sure git understands file types
|   .gitignore - to ignore import and others
|   LICENSE - MIT
|   README.md - this file
|   
+---game
|   |   project.godot - main project file
|   |   
|   +---build - folder to be used as a compilation input, look here for games!
|   |       
|   \---content - game's actual content
|       +---base - start and base reference/autoload scripts
|       |   |   globals.gd
|       |   |   startup.gd
|       |   |   startup.tscn
|       |   |   
|       |   +---helpers - helper script to handle strings, dates, and so on
|       |   |       
|       |   \---services - scripts that access external services or API's
|       |           
|       +---characters - all entities that has some form of intelligence and influence the experience actively
|       |   +---enemy - enemy creature and intelligent obstacles
|       |   |       
|       |   +---npc - non-player characters that will interact with the player
|       |   |       
|       |   \---player - one or more type of player characters (depending on genre and gameplay)
|       |       |   
|       |       \---warrior - sample player character directory
|       |           +---animations - animation files for this character
|       |           |       
|       |           +---effects - shaders and other effects that comes from players actions
|       |           |       
|       |           +---scripts - additional scripts for the player character
|       |           |       
|       |           +---sounds - sound effects for the player character
|       |           |       
|       |           \---textures - textures, sprites and other form of 2d art needed for the character
|       |                   
|       +---dev - assets (graphics and sound) that are related to the development of a game, but not directly part of it
|       |   |   screen-template.psd - a 720p screen template with safe zones
|       |   |   
|       |   +---boot-splash
|       |   |       boot-splash.png - image to be displayed when the game first loads (before first scene)
|       |   |       
|       |   +---icons-android - sets of icons for Android devices
|       |   |       
|       |   +---icons-base - regular sets of icons not related to any platform or PC-related ones
|       |   |       icon.png
|       |   |       
|       |   \---icons-ios - sets of icons for Apple devices
|       |           
|       +---effects - effects directories, it can be graphical or audio effects
|       |   \---postprocess - effects related to the composition after the game renders
|       |           
|       +---environment - environment specifications and related assets
|       |   |   default_env.tres
|       |   |   
|       |   +---background - graphics, sounds and scripts related to the infinite background
|       |   |       
|       |   +---buildings - graphics, sounds and scripts related to parts of the scenery that will be traversable by the player and are present in different scenes
|       |   |       
|       |   +---folliage - graphics, sounds and scripts related to plants, trees and folliage present in different scenes
|       |   |       
|       |   +---landscape - graphics, sounds and scripts related to biomes, soils, present in different scenes.
|       |   |       
|       |   +---scene-props - graphics sounds an scripts of boxes, obstacles, lamps and other props present in different scenes.
|       |   |       
|       |   +---sky - graphics, sounds and scripts related to ambience, sky and global illumination that are  present in different scenes.
|       |   |       
|       |   \---water - graphics, sounds and scripts related to liquids and water zones that are  present in different scenes.
|       |           
|       +---gameplay
|       |   +---ai - mainly scripts, that control the behaviour of diferent parts of obstacles, npcs, and enemies.
|       |   |       
|       |   \---multiplayer - mainly scripts that control the match rules if any and the multiplayer networking/messaging.
|       |           
|       +---items - all related to collectables
|       |   +---powerups - graphics, sounds, effects and scripts related to items that augment the player's capabilities
|       |   |       
|       |   +---stuff - graphics, sounds, effects and scripts related to other items the player can obtain/carry
|       |   |       
|       |   \---weapons - graphics, sounds, effects and scripts related to items that give power to fight against enemies/other players.
|       |           
|       +---maps - all "scenarios" 
|       |   +---episode-01 - maps should be divided into themes or episodes to provide a better browsing experience
|       |   |       
|       |   \---test-maps - test maps that may never appear in the final game
|       |       |   
|       |       \---test-island - sample test maps
|       |           +---animations - animations related to the specifics of this map
|       |           |       
|       |           +---effects - effects related to the specifics of this map
|       |           |       
|       |           +---materials - materials related to the specifics of this map
|       |           |       
|       |           +---meshes - models related to the specifics of this map
|       |           |       
|       |           +---particles - particle effects related to the specifics of this map
|       |           |       
|       |           +---scripts - additional scripts related to the specifics of this map
|       |           |       
|       |           +---sounds - sounds related to the specifics of this map
|       |           |       
|       |           \---textures - textures and sprites related to the specifics of this map
|       |                   
|       +---sound - sounds and music that could be used anywjere
|       |   +---music - music tracks for menues or general music
|       |   |       
|       |   \---sfx - sound effects for general stuff unrelated to characters, maps, etc.
|       |           
|       +---ui
|       |   +---hud - graphics, sounds, effects and scripts related to indicators that appear avobe the gaming experience
|       |   |       
|       |   \---menus - interaction screens througout the game
|       |       +---in-gme - graphics, sounds, effects and scripts related to pause menus and in-game menus
|       |       |       
|       |       +---inventory - graphics, sounds, effects and scripts related to player character management
|       |       |       
|       |       +---options - graphics, sounds, effects and scripts related to setting the options of the game
|       |       |       options.png - options menu background
|       |       |       OptionsMenu.gd - OptionsMenu script that set current options
|       |       |       OptionsMenu.tscn - OptionsMenu sub-scene nodes
|       |       |       
|       |       +---services - graphics, sounds, effects and scripts related to services menues like leaderboards and achievements
|       |       |       
|       |       +---splash - graphics, sounds, effects and scripts related to the very beggining of the game
|       |       |       splash.tres - animation secuence for the splash graphics
|       |       |       splash001.png - W-LINE games background (sample)
|       |       |       splash002.png - HartQuake productions background (sample)
|       |       |       SplashScreens.gd - script that controls and detects the end of the animation
|       |       |       SplashScreens.tscn - SplashScreens sub=scene nodes
|       |       |       
|       |       \---title - graphics, sounds, effects and scripts related to the main menu of the game
|       |               title-bg.png - Main Menu Background, be flashy here
|       |               TitleMenu.gd - script related to navigating the main menu and starting events
|       |               TitleMenu.tscn - TitleMenu sub-scene nodes.
|       |               
|       \---vehicles - graphics, sounds, effects and scripts related to alternative means of transportation/move around a map
|               
+---related - related documents and assets for marketing and commercialization purposes
|   +---android-store - screenshtos, videos and other material for android Google Play
|   |       
|   +---apple-store - screenshtos, videos and other material for android Google Play
|   |       
|   +---design - documents, concept art and other material related to the idea and development
|   |       
|   +---presskit - http://dopresskit.com/ here . . . do it
|   |       
|   \---print - diptics, triptics, posters, banners, flyers, social network graphics, etc.
|           
+---server - if you have multiplayer or stats and need to deploy a server, here is your place
|       
\---site - every nice game has its site full of info...
```
