# generate starting random length, pitch, and yaw
function xze:internal/lightning/generate_pitch_yaw_len

# start loop
execute facing entity @s eyes run function xze:internal/lightning/make_bolt/loop with storage xze:temp