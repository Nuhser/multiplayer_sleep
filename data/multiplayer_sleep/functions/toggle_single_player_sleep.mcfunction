#> Toggles the single player requirement for multiplayer sleep.
# Called By: player <PLAYER>

# change score from 0 to 1 or from 1 to 0
scoreboard players operation $single_player_sleep ms_sleep -= $1 nuhser_constants
scoreboard players operation $single_player_sleep ms_sleep *= $-1 nuhser_constants

# give chat feedback
execute if score $single_player_sleep ms_sleep matches ..0 run tellraw @a ["",{"text":"The number players required for multiplayer sleep is set to 50%.","color":"green"}]
execute if score $single_player_sleep ms_sleep matches 1.. run tellraw @a ["",{"text":"The number players required for multiplayer sleep is set to 1.","color":"green"}]
