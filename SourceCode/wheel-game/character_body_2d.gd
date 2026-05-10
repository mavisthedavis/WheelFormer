extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var current_level = 0;  
var wheel_placement_list = [Vector2(995, 295), Vector2(157, 157), Vector2(568.0, 134.0), Vector2(510, 419), Vector2(997, 265), Vector2(573.0, 327.0)];   

var velocity_check = false;  
func _ready():  
	#print(current_level); 
	position = wheel_placement_list[current_level]; 

func _process(_delta):  
	if (%Reset.reset_clicked): 
		position = wheel_placement_list[current_level];
	if (get_node("/root/Node2D/CharacterBody2D/Wheel").current_level > current_level):  
		current_level += 1;  
		velocity_check = true; 
		position = wheel_placement_list[current_level];

func _physics_process(delta: float) -> void:  
	velocity = get_node("/root/Node2D/CharacterBody2D/Wheel").movement * delta;     
	velocity_check = false; 
	 
	#var col_info = move_and_collide(velocity); 
	#if col_info: 
	#	velocity = velocity.bounce(col_info.get_normal());
	#var col_info = move_and_collide(Vector2(5, 0) * delta);    
	#print(col_info);
	#if col_info:  
		#print("test");  
	#move_and_collide(Vector2(5, 0) * delta);     
	move_and_slide();   
func on_body_entered(body): 
	print("el test"); 
