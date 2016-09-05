import threadpool

var g = 0

proc increment() =
  for i in 0..10_000:
    g.inc

spawn increment()
spawn increment()

sync()
echo g