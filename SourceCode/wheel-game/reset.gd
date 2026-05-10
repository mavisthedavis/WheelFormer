extends Button

@export var reset_clicked = false; 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	reset_clicked = false;  
	#print(reset_clicked); 


	



func _on_pressed() -> void:
	reset_clicked = true;   
	#print(reset_clicked); 
