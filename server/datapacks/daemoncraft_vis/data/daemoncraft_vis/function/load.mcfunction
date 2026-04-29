# DaemonCraft visibility datapack — init teams and scoreboards
scoreboard objectives add dc_x dummy
scoreboard objectives add dc_y dummy
scoreboard objectives add dc_z dummy

# Blueprint book trigger system
scoreboard objectives add dc_build trigger

team add marcus
team modify marcus color red
team add sarah
team modify sarah color blue
team add jin
team modify jin color green
team add dave
team modify dave color yellow
team add lisa
team modify lisa color light_purple
team add tommy
team modify tommy color aqua
team add elena
team modify elena color gold
team add stevie
team modify stevie color dark_red
team add moss
team modify moss color dark_green
team add reed
team modify reed color dark_aqua
team add flint
team modify flint color dark_gray
team add pamplinas
team modify pamplinas color light_purple

# Start the 1-second periodic function (replaces any existing schedule)
schedule function daemoncraft_vis:second 20t replace
