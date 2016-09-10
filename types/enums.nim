type
  Color {.pure.} = enum
    red, blue, green, yellow

# Pure enum values should be qualified with type
let color = Color.red
echo color
