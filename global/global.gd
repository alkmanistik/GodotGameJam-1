extends Node

var config: ConfigFile
var path_to_save_file : String = "user://game.cfg"
var path_to_save_picture : String = "user://cats/"
var section_name : String = "game"

var find_cat = 0
var find_cat_city = 0
var find_cat_laboratory = 0
var find_cat_park = 0

var cat_dict_null = {}
var inventory_dict_null = {}

var cat_dict = cat_dict_null
var inventory_dict = inventory_dict_null


func _ready() -> void:
	load_game()

func save_game() -> void:
	config.set_value(section_name, "find_cat", find_cat)
	config.set_value(section_name, "find_cat_city", find_cat_city)
	config.set_value(section_name, "find_cat_laboratory", find_cat_laboratory)
	config.set_value(section_name, "find_cat_park", find_cat_park)
	config.set_value(section_name, "cat_dict", cat_dict)
	config.set_value(section_name, "inventory_dict", inventory_dict)
	config.save(path_to_save_file)

func load_game() -> void:
	config = ConfigFile.new()
	config.load(path_to_save_file)
	
	find_cat = config.get_value(section_name, "find_cat", 0)
	find_cat_city = config.get_value(section_name, "find_cat_city", 0)
	find_cat_laboratory = config.get_value(section_name, "find_cat_laboratory", 0)
	find_cat_park = config.get_value(section_name, "find_cat_park", 0)
	cat_dict = config.get_value(section_name, "cat_dict", {})
	inventory_dict = config.get_value(section_name, "inventory_dict", {})

