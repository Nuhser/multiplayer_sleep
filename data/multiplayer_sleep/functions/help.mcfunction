#> Help messages for Multiplayer Sleep
# Called By: #nuhser_core:help <SERVER>

#item for list of installed mods
tellraw @a[scores={help=1}] [{"text":">  "},{"text":"[Multiplayer Sleep]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger help set 9"}}]

#explanation of nuhser mod
tellraw @a[scores={help=9}] [{"text":"\nMultiplayer Sleep","underlined":true,"color":"dark_aqua"},{"text":" (v2.1.1)\n","underlined":false}]
tellraw @a[scores={help=9}] [{"text":"Durch Multiplayer Sleep ist es nicht mehr nötig, dass alle Spieler auf dem Server schlafen, damit die Nacht übersprungen wird. Stattdessen reicht es nun, wenn "},{"text":"50%","color":"green"},{"text":" (abgerundet) der Spieler im Bett liegen."}]
tellraw @a[scores={help=9}] [{"text":"Alternativ kann man als Operator den Befehl \""},{"text":"/function multiplayer_sleep:toggle_single_player_sleep","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function multiplayer_sleep:toggle_single_player_sleep"},"hoverEvent":{"action":"show_text","value":"Toggle Single Player Sleep"}},{"text":"\" benutzen, damit nur ","color":"reset"},{"text":"ein","color":"green"},{"text":" Spieler im Bett liegen muss. Dies kann mit dem selben Befehl wieder umgeschaltet werden.","color":"reset"}]
