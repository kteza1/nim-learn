import os, threadpool

# returns a FlowVar[string] container value
var input = spawn stdin.readLine()

while not input.isReady():
    echo "no input received. Will check again in 5 secs"
    sleep(5000)

# ^input returns 'string' from FlowVar[string] container
# when there is a string inside it. Blocks until then.
echo "Input received: ", ^input