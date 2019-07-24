#> Removes scoreboard for multiplayer_sleep.
# Called By: #nuhser_core:uninstall <SERVER>
#

#removes sleep scoreboard
tellraw @a ["",{"text":"Removing all scoreboards for Multiplayer Sleep...","color":"yellow"}]

scoreboard objectives remove nuhser_sleep

tellraw @a ["",{"text":"Multiplayer Sleep successdul uninstalled!","color":"green"}]

#disable multiplayer_sleep
datapack disable "file/multiplayer_sleep"
