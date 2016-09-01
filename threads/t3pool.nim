import threadpool

var data = "hello world"

proc display(s: string) =
    for i in 0..<s.len:
        stdout.write(s[i])
    echo()

# proc displayUnsafe() =
#     for i in 0..<data.len:
#         stdout.write(data[i])
#     echo()

spawn display(data)
spawn display(data)
# Not allowed because it is using 'data'
# which belongs to other thread
#spawn displayUnsafe()

# wait for all the tasks in threadpool finishes
sync()