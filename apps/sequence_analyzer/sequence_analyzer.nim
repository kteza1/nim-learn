import algorithm, future, sequtils

proc fill_misssing(list: seq[int]): seq[int] =
  var list = list
  var filled: seq[int] = @[]
  sort list, (x,y) => cmp(x, y)

  var prev = list[0] - 1

  for e in list:
    let diff = e - prev
    if diff == 1:
      filled.add(e)
    elif diff > 1:
      filled.add(0.repeat(diff - 1))
      filled.add(e)
    prev = e
  
  filled

proc missing(list: seq[int]): seq[string] =
  var list = list
  result = @[]

  var last = -1
  var last_missing = -1
  let filled = list.fill_misssing

  for e in filled:
    if e == 0 and last != 0:
      var miss = last + 1
      result.add($(miss))
      last_missing = miss
    elif e == 0 and last == 0:
      last_missing = last_missing + 1
    elif e != 0 and last == 0:
      result[result.len - 1] = result[result.len - 1] & "-" & $last_missing

    last = e      

let list = @[1, 2, 3, 4, 5, 10, 15, 20, 21, 22].missing
echo list