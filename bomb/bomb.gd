extends RigidBody

var Pickup = preload("res://Player/Player_with_bomb.tscn")

func _on_bomb_body_entered(body):
	if body.name == "Enemy":
		var exit = get_node_or_null("root/Game/Maze/Exit")
		if exit != null:
			exit.unlock()
			queue_free()
