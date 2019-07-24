#> Creates scoreboard for multiplayer sleep.
# Called By: #nuhser_core:init <SERVER>

tellraw @a ["",{"text":"----------------------------------------"}]
tellraw @a ["",{"text":"multiplayer_sleep: Loading Multiplayer Sleep...","color":"dark_purple"}]

tellraw @a ["",{"text":"multiplayer_sleep: Creating scoreboard...","color":"yellow"}]

# create sleep scoreboard
scoreboard objectives add nuhser_sleep dummy

tellraw @a ["",{"text":"multiplayer_sleep: Loading successful!","color":"green"}]
tellraw @a ["",{"text":"----------------------------------------"}]