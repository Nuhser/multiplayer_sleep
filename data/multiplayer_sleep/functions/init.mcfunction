#> Creates scoreboard for multiplayer sleep.
# Called By: #nuhser_core:init <SERVER>

#create sleep scoreboard
tellraw @a ["",{"text":"Creating scoreboard for Multiplayer Sleep...","color":"yellow"}]

scoreboard objectives add nuhser_sleep dummy

tellraw @a ["",{"text":"Multiplayer Sleep successful initialized!","color":"green"}]
