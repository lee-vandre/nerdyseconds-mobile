extends Control

var file_as_list =[]
var waiting_list = []
var counter=0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func reset_lists() -> void:
	for i in waiting_list:
		file_as_list.append(i)
	waiting_list.clear()
	
	
func _on_button_button_down() -> void:
	if counter > 10:
		counter = 0
		reset_lists()
		
	var file_path = "res://nerdystuff.txt"
	
	# Open the file in read mode
	var file = FileAccess.open(file_path, FileAccess.READ)
	
	var fileastext = file.get_as_text()
	
	while !file.eof_reached():
		var line = file.get_line().strip_edges()
		file_as_list.append(line)
		
	file_as_list.shuffle()
	$Label.text = file_as_list[0]
	$Label2.text = file_as_list[1]
	$Label3.text = file_as_list[2]
	$Label4.text = file_as_list[3]
	$Label5.text = file_as_list[4]
	
	$Label6.text = file_as_list[5]
	$Label7.text = file_as_list[6]
	$Label8.text = file_as_list[7]
	$Label9.text = file_as_list[8]
	$Label10.text = file_as_list[9]
	
	waiting_list.append(file_as_list[0])
	waiting_list.append(file_as_list[1])
	waiting_list.append(file_as_list[2])
	waiting_list.append(file_as_list[3])
	waiting_list.append(file_as_list[4])
	waiting_list.append(file_as_list[5])
	waiting_list.append(file_as_list[6])
	waiting_list.append(file_as_list[7])
	waiting_list.append(file_as_list[8])
	waiting_list.append(file_as_list[9])
	
	file_as_list.remove_at(0)
	file_as_list.remove_at(1)
	file_as_list.remove_at(2)
	file_as_list.remove_at(3)
	file_as_list.remove_at(4)
	file_as_list.remove_at(5)
	file_as_list.remove_at(6)
	file_as_list.remove_at(7)
	file_as_list.remove_at(8)
	file_as_list.remove_at(9)
	
	
	print(waiting_list)
	counter+=1
	pass # Replace with function body.
