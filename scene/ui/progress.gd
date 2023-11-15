extends Control

func update_label(now_cat : int,max_cat : int):
	%Label.text = str(now_cat) + " / " + str(max_cat)
