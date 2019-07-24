#> Let the players sleep the night away if half of them sleep or only one depanding on the configuration.
# Called By: #nuhser_core:tick <SERVER>

# count players online (only survival players in overworld)
scoreboard players set $players_online ms_sleep 0
execute as @a[gamemode=survival,nbt={Dimension:0}] at @s run scoreboard players add $players_online ms_sleep 1

# count players sleeping
scoreboard players set $sleeping_players ms_sleep 0
execute as @a[nbt={Sleeping:1b}] at @s run scoreboard players add $sleeping_players ms_sleep 1

# calculate required players
scoreboard players operation $required_players ms_sleep = $players_online ms_sleep
scoreboard players operation $required_players ms_sleep /= $2 nuhser_constants
scoreboard players operation $odd_players_online ms_sleep = $players_online ms_sleep
scoreboard players operation $odd_players_online ms_sleep %= $2 nuhser_constants
execute if score $odd_players_online ms_sleep matches 1.. run scoreboard players add $required_players ms_sleep 1

execute if score $single_player_sleep ms_sleep matches 1.. run scoreboard players set $required_players ms_sleep 1

# count ticks slept
execute if score $sleeping_players ms_sleep < $required_players ms_sleep if score $time_slept ms_sleep matches 1.. run scoreboard players set $time_slept ms_sleep 0
execute if score $players_online ms_sleep matches ..0 if score $time_slept ms_sleep matches 1.. run scoreboard players set $time_slept ms_sleep 0
execute if score $sleeping_players ms_sleep >= $required_players ms_sleep if score $players_online ms_sleep matches 1.. run scoreboard players add $time_slept ms_sleep 1

# make notifications
tag @a[nbt={Sleeping:0b},tag=ms_sleep] remove ms_sleep

execute if score $sleeping_players ms_sleep < $required_players ms_sleep as @a[nbt={Sleeping:1b},tag=!ms_sleep] at @s run tellraw @a ["",{"selector":"@p","color":"yellow"},{"text":" is now sleeping. ","color":"yellow"},{"score":{"name":"$sleeping_players","objective":"ms_sleep"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"$required_players","objective":"ms_sleep"},"color":"red"}]

execute if score $sleeping_players ms_sleep >= $required_players ms_sleep as @a[nbt={Sleeping:1b},tag=!ms_sleep] at @s run function multiplayer_sleep:random_message

tag @a[nbt={Sleeping:1b},tag=!ms_sleep] add ms_sleep

# make time go by
execute if score $sleeping_players ms_sleep >= $required_players ms_sleep if score $time_slept ms_sleep matches 100.. run time add 100
execute if score $sleeping_players ms_sleep >= $required_players ms_sleep if score $time_slept ms_sleep matches 200.. run weather clear
