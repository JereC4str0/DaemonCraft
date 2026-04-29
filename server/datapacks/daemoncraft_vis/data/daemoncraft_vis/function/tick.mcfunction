# Lightweight tick — only blueprint triggers (need instant response)
scoreboard players enable @a dc_build

execute as @a[scores={dc_build=1}] at @s run function daemoncraft_vis:build/casa
execute as @a[scores={dc_build=2}] at @s run function daemoncraft_vis:build/torre
execute as @a[scores={dc_build=3}] at @s run function daemoncraft_vis:build/altar

scoreboard players set @a[scores={dc_build=1..}] dc_build 0
