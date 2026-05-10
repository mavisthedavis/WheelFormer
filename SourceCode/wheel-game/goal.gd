extends Area2D 

@export var level = 0; 
@export var if_entered = false; 
var goal_placement_list = [Vector2(595, 295), Vector2(566, 564), Vector2(566, 564), Vector2(597, 61), Vector2(267, 277), Vector2(591.0, -162)];  
func _ready(): 
	position = goal_placement_list[level];
func _on_body_entered(body: Node2D):
	level += 1; 
	if_entered = true;   
	position = goal_placement_list[level];   
	#print(level);  
func _process(_delta): 
	if_entered = false; 
	
