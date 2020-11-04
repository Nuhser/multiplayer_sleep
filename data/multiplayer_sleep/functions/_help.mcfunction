#> Help messages for Multiplayer Sleep
# Called By: #nuhser_core:help <SERVER>

# item for list of installed mods
tellraw @a[scores={help=1}] [{"text":">  "},{"text":"[Multiplayer Sleep]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger help set 9"}}]

# explanation of nuhser mod
tellraw @a[scores={help=9}] [{"text":"\nMultiplayer Sleep","underlined":true,"color":"dark_aqua"},{"text":" (v5.0.0)\n","underlined":false}]

tellraw @a[scores={help=9}] [{"text":"Multiplayer Sleep sets the number of sleeping players required to skip the night to "},{"text":"50%","color":"green"},{"text":" of all players online.", "color":"reset"}]

tellraw @a[scores={help=9}] [{"text":"Alternatively you can use \""},{"text":"/function multiplayer_sleep:toggle_single_player_sleep","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function multiplayer_sleep:toggle_single_player_sleep"},"hoverEvent":{"action":"show_text","value":"Toggle Single Player Sleep"}},{"text":"\" to set the number of required players to ","color":"reset"},{"text":"1","color":"green"},{"text":". You can toggle off this option with the same command.","color":"reset"}]

tellraw @a[scores={help=9}] ["", {"text": "It's also possible to tell the other players on the server that you don't want them to sleep by using the command \""}, {"text":"/trigger stop_sleeping","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger stop_sleeping"},"hoverEvent":{"action":"show_text","value":"Trigger Sleep Stop"}}, {"text":"\". This will stop everyone on the server from sleeping for 10 minutes.", "color": "reset"}]