#> Selects a random message and writes it in chat.
# Called By: multiplayer_sleep:tick @a[nbt={Sleeping:1b},tag=!nuhser_sleep]

scoreboard players set $max nc_rng 7
function nuhser_core:_next_random

execute if score $next nc_rng matches ..0 run tellraw @a ["",{"selector":"@p","color":"green"},{"text":" is now sleeping. Good Night! :*","color":"yellow"}]
execute if score $next nc_rng matches 1 run tellraw @a ["",{"selector":"@p","color":"green"},{"text":" feels a little tired. -.-","color":"yellow"}]
execute if score $next nc_rng matches 2 run tellraw @a ["",{"selector":"@p","color":"green"},{"text":" is counting sheep.","color":"yellow"}]
execute if score $next nc_rng matches 3 run tellraw @a ["",{"selector":"@p","color":"green"},{"text":" is ... zzzzzzZZZZZZZZ","color":"yellow"}]
execute if score $next nc_rng matches 4 run tellraw @a ["",{"selector":"@p","color":"green"},{"text":" went to bed.","color":"yellow"}]
execute if score $next nc_rng matches 5 run tellraw @a ["",{"selector":"@p","color":"green"},{"text":" needs some beauty rest.","color":"yellow"}]
execute if score $next nc_rng matches 6 run tellraw @a ["",{"selector":"@p","color":"green"},{"text":" wants this day to end.","color":"yellow"}]
execute if score $next nc_rng matches 7.. run tellraw @a ["",{"selector":"@p","color":"green"},{"text":" has reached the bed.","color":"yellow"}]