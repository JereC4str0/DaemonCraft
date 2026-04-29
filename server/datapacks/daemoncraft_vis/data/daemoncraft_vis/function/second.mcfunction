# Runs every 20 ticks (1 second) — optimized for low-resource servers

# Show coordinates in action bar (once per second is enough)
execute as @a at @s run title @s actionbar ["",{"text":"X: ","color":"aqua"},{"score":{"name":"@s","objective":"dc_x"},"color":"white"},{"text":" Y: ","color":"aqua"},{"score":{"name":"@s","objective":"dc_y"},"color":"white"},{"text":" Z: ","color":"aqua"},{"score":{"name":"@s","objective":"dc_z"},"color":"white"}]

# Update coordinate scoreboards
execute as @a store result score @s dc_x run data get entity @s Pos[0]
execute as @a store result score @s dc_y run data get entity @s Pos[1]
execute as @a store result score @s dc_z run data get entity @s Pos[2]

# Auto-assign teams only for players who haven't been assigned yet
team join marcus @a[name=Marcus,team=]
team join sarah @a[name=Sarah,team=]
team join jin @a[name=Jin,team=]
team join dave @a[name=Dave,team=]
team join lisa @a[name=Lisa,team=]
team join tommy @a[name=Tommy,team=]
team join elena @a[name=Elena,team=]
team join stevie @a[name=Stevie,team=]
team join moss @a[name=Moss,team=]
team join reed @a[name=Reed,team=]
team join flint @a[name=Flint,team=]
team join pamplinas @a[name=Pamplinas,team=]

# Permanent glowing effect — re-apply every 5 seconds (100 ticks) to avoid every-tick cost
# We schedule this from a separate 5-second function, but for simplicity we do it here
# with a 7-second duration so it overlaps safely
effect give @a minecraft:glowing 7 0 true

# Schedule next run (replace to avoid queue buildup on lag)
schedule function daemoncraft_vis:second 20t replace
