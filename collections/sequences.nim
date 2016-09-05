# Unlike arrays. Sequences are allocated on heap and will be garbage collected
var list: seq[int] = @[]

# Will result in out of bound exception. No index '0' in sequence yet
# list[0] = 1
#

# Allocate and append
for i in 0..<10:
  list.add(i)

echo $list

# Accessing with out initializing the sequence will result in segmentation fault
#
# var list2: seq[int]
# echo list2[0]
#

# Sequence can also be initialized with newSeq() method
var list2 = newSeq[int]()
for i in 0..<10:
  list2.add(i)

echo $list2
