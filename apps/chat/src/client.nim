import os, threadpool

if paramCount() == 0:
  quit("Specify server address: Usage --> ./client {SERVER_ADDRESS}")

#NOTE: getAppFileName() is the way to go for getting app name.
#    : paramStr(0) is not cross platform
#

let server = paramStr(1)

# use predefined 'stdout', 'stdin' object from system module
while true :
  stdout.write("enter your message: ")
  # readLine not blocked here. Returns a 'FlowVar[string]' immediately
  let input = spawn stdin.readLine()
  # blocked here
  echo("Input --> \"", ^input, "\"")
