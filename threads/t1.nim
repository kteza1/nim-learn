var data = "Hello World"
proc showData(args: tuple[a: string, b: int] ) {.thread.} =
    echo( args.a, args.b )


var thread: Thread[tuple[a: string, b: int]]

#even theads's and showData's arg's variable names should be same
createThread(thread, showData , (data, 100))
joinThread(thread)