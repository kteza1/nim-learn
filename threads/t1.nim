### Not allowed to access global non copy
### type data in the thread

# var g = "hello world"

# proc accessGlobal() {.thread.} =
#     echo g



### This works because g (int) is a copy type
var g = 100
proc accessGlobal() {.thread.} =
    echo g


var thread1: Thread[void]
createThread(thread1, accessGlobal)
joinThread(thread1)



### Non-copy types should be passed as arguments
var data = "Hello World"
proc showData(args: tuple[a: string, b: int] ) {.thread.} =
    echo( args.a, args.b )


var thread2: Thread[tuple[a: string, b: int]]
#even theads's and showData's arg's variable names should be same
createThread(thread2, showData , (data, 100))
joinThread(thread2)