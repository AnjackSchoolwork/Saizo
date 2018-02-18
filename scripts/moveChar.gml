/// moveChar(direction, speed)
// Moves character in specified direction, for a distance equal to speed * delta_time

move_direction = argument[0]
move_speed = argument[1]

move_distance = move_speed * (delta_time / 1000000)

dest_x = x + lengthdir_x(move_distance, move_direction)
dest_y = y + lengthdir_y(move_distance, move_direction)

x = dest_x
y = dest_y
