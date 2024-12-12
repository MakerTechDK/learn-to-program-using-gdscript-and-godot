extends Node

@onready var gold_coin: AnimatedSprite2D = $GoldCoin
@onready var purple_coin: AnimatedSprite2D = $PurpleCoin

var start_position = Vector2(64, 64)
var rows: int = 8
var cols: int = 8
var distance: int = 16
var coin_choice = 1


func _ready() -> void:
	print_debug("Print 1")
	print_debug("Print 2")
	print_debug("Print 3")
	
	for r in range(rows):
		print_debug("Print 4")
		
		for c in range(cols):
			if coin_choice == 0:
				create_new_coin(gold_coin, c, r)
			else:
				create_new_coin(purple_coin, c, r)


func create_new_coin(coin_type, row, coll) -> void:
	var new_coin = coin_type.duplicate()
	new_coin.position = start_position + Vector2(row * distance, coll * distance)
	add_child(new_coin)
