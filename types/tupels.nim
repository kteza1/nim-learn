type
  Cat = tuple
    name : string

  Dog = tuple
    name : string

var c : Cat = (name: "fluffy")
var d : Dog = (name: "fluffy")

# Unlike objects, tuples will be compared
# with their content
assert c == d
