import threadpool, locks

var counterLock: Lock
initLock(counterLock)

var counter {.guard: counterLock.} = 0

proc increment() =
  for i in 0..<10_000:
    withLock counterLock:
      counter.inc

spawn increment()
spawn increment()

sync()
echo counter