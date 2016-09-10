# Sets are value types. This is initialized automatically
var s: set[int16]
assert s == {}
#NOTE: Sets are unordered like dicts in other languages

# Sets can take ranges
var s1 = {'A' .. 'Z'}
echo s1

# Sets can take ranges
var s2 = {'a', 'R', 'z'}
echo s2

# Intersection of 2 sets
echo s1 * s2
