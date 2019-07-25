#> Wakes up all sleeping players
# Called By: multiplayer_sleep:tick <SERVER>


# tell sleeping players to get up
execute as @a[scores={ms_sleep=1..}] at @s run title @s actionbar ["", {"text":"Somebody doesn't want you to sleep.", "color": "red"}]

# summon snowball to kick players out of bed
execute as @a[scores={ms_sleep=1..}] at @s run tp ~ ~.0001 ~