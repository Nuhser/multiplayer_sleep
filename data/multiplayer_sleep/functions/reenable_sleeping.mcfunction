#> Enables the players to sleep again.
# Called By: multiplayer_sleep:tick <SERVER>

# re-enable sleeping
scoreboard players reset $disable_sleeping ms_sleep
tellraw @a ["", {"text":"Everybody can now sleep again.", "color":"green"}]