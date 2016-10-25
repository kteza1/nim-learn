import asyncdispatch

var answer = newFuture[int]()
doAssert(not answer.finished)

answer.callback =
  proc (future: Future[int]) =
    echo "future is finished: ", future.read()

answer.complete(100)

# futures can also raise exceptions
#
# anwser.fail(newException(ValueError, "future failed"))
