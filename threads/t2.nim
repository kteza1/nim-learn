
proc printData(s: string) {.thread.}=
    for i in 0..<s.len():
        stdout.write(s[i])
    echo ()

var threads: array[2, Thread[string]]

createThread(threads[0], printData, "hello world")
createThread(threads[1], printData, "hello nim")

joinThreads(threads)