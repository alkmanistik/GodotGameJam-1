extends Control

func update_label(now_cat,max_cat):
	%Label.text = str(now_cat) + " / " + str(max_cat)
