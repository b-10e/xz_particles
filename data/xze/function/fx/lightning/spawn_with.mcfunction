$data modify storage xze:temp particle set value "$(particle)"

# should be run as the entity to draw the lightning to, at a different location
execute facing entity @s feet run function xze:internal/lightning/make_bolt/main