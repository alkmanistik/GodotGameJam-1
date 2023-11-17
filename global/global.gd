extends Node

var temp_cat = "Default"

var config: ConfigFile
var path_to_save_file : String = "user://game.cfg"
var path_to_save_picture : String = "user://cats/"
var section_name : String = "game"
var section_name_to_global_settings : String = "settings"

var volume: int = 0
var language: String = "english"

var find_cat: int = 0
var find_cat_city: int = 0
var find_cat_laboratory: int = 0
var find_cat_park: int = 0
var unlock_locator: bool = false
var location: String = ""
var position:Vector2 = Vector2(0,0)

var cat_dict_null: Dictionary = {"Cat Dog": [0,0], "The Masked Cat": [0,0], "Ninja": [0,0],
"Long Cat": [0,0],"Flag Cat": [0,0],"": [0,0],"Cat Reporter": [0,0],
"Shroedinger`s Cat": [0,0],"Nyan Cat": [0,0],"Gigachad": [0,0],
"Amogus": [0,0],"Programmer": [0,0],"Scientist": [0,0],
"Fluffy": [0,0],"Lake Cat": [0,0],"Jumping Cat": [0,0],
"Fermer": [0,0],"Strange cat": [0,0],"Archaeologist": [0,0]}
var inventory_dict_null: Dictionary = {}

var cat_dict: Dictionary = cat_dict_null
var inventory_dict: Dictionary = inventory_dict_null

func _ready() -> void:
	load_game()

func save_global_settings() -> void:
	config.set_value(section_name_to_global_settings, "volume", volume)
	config.set_value(section_name_to_global_settings, "language", language)

func save_game() -> void:
	config.set_value(section_name, "find_cat", find_cat)
	config.set_value(section_name, "find_cat_city", find_cat_city)
	config.set_value(section_name, "find_cat_laboratory", find_cat_laboratory)
	config.set_value(section_name, "find_cat_park", find_cat_park)
	config.set_value(section_name, "cat_dict", cat_dict)
	config.set_value(section_name, "inventory_dict", inventory_dict)
	config.set_value(section_name, "unlock_locator", unlock_locator)
	config.set_value(section_name, "location", location)
	config.set_value(section_name, "position", position)
	config.save(path_to_save_file)

func load_game() -> void:
	config = ConfigFile.new()
	config.load(path_to_save_file)
	
	find_cat = config.get_value(section_name, "find_cat", 0)
	find_cat_city = config.get_value(section_name, "find_cat_city", 0)
	find_cat_laboratory = config.get_value(section_name, "find_cat_laboratory", 0)
	find_cat_park = config.get_value(section_name, "find_cat_park", 0)
	cat_dict = config.get_value(section_name, "cat_dict", cat_dict_null.duplicate(1))
	inventory_dict = config.get_value(section_name, "inventory_dict", inventory_dict_null.duplicate(1))
	unlock_locator = config.get_value(section_name, "unlock_locator", false)
	
	volume = config.get_value(section_name_to_global_settings, "volume", 0)
	language = config.get_value(section_name_to_global_settings, "language", "")
