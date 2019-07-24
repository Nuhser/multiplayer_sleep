#
# Desc.: Selects a random message and writes it in chat.
# Called By: multiplayer_sleep:tick
# @s: @a[nbt={Sleeping:1b},tag=!nuhser_sleep]
#

scoreboard players set $max nuhser_rng 7
function nuhser_core:next_random

execute if score $next nuhser_rng matches 0 run tellraw @a ["",{"selector":"@p","color":"yellow"},{"text":" is now sleeping. Good Night! :*","color":"green"}]
execute if score $next nuhser_rng matches 1 run tellraw @a ["",{"selector":"@p","color":"yellow"},{"text":" feels a little tired. -.-","color":"green"}]
execute if score $next nuhser_rng matches 2 run tellraw @a ["",{"selector":"@p","color":"yellow"},{"text":" is counting sheep.","color":"green"}]
execute if score $next nuhser_rng matches 3 run tellraw @a ["",{"selector":"@p","color":"yellow"},{"text":" is... zzzzzzZZZZZZZZ","color":"green"}]
execute if score $next nuhser_rng matches 4 run tellraw @a ["",{"selector":"@p","color":"yellow"},{"text":" went to bed.","color":"green"}]
execute if score $next nuhser_rng matches 5 run tellraw @a ["",{"selector":"@p","color":"yellow"},{"text":" needs his beauty rest.","color":"green"}]
execute if score $next nuhser_rng matches 6 run tellraw @a ["",{"selector":"@p","color":"yellow"},{"text":" is tired like a Kalle.","color":"green"}]
