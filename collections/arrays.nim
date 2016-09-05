var list: array[3, int]

for i in 0..<3:
  list[i] = i

# $ converts objects to string
# But $ is not implemented for array. use '.repr' instead
#echo $list
#

echo list.repr

# bound checks are on in debug mode but not in release mode (-d:release)
# list[100] = 10
# echo list.repr
#

# Array index range can be customized
var list2: array[-10 .. -3, int]
list[-5] = 10
list[-4] = 20

echo list2.repr

# Array initialization. You can initialize in place
var list3 = ["My", "name", "is", "KABALI"]

# Iterate through elements
for s in list3:
  echo(s)

# Iterate through indices
for i in list2.low .. list2.high:
  echo(i)
