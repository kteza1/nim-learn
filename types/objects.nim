type
  # An object which will be allocated on stack
  Animal = object
    name: string
    legs: int

  # An object which will be allocated on heap
  Bird = ref object
    name: string
    fly: bool

# Non ref objects (stack objects) cannot be mutated
# inside methods directly coz you are modifying the copy.
# Helps in explicitness that user is absolutely sure he
# is modifying the copy but not original passed object
#proc setName(a: Animal, name: string) =
#  var a = a
#  a.name = name

# a: var Animal is a reference to passed parameter (be it on stack or heap)
proc setName(a: var Animal, name: string) =
  a.name = name

proc setName(b: Bird, name: string) =
  b.name = name


var dog = Animal(name: "shadow", legs: 4)
dog.name = "lucy"
dog.setName("jimmy")
# Object types can be converted to string with $
echo $dog

var parrot = Bird(name: "talky", fly: true)
parrot.setName("walkytalky")
# Reference types cannot be converted to string with $
echo parrot.repr


