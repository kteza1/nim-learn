import json

type Message* = object
  username*: string
  message*: string

proc parseMessage*(message: string): Message =
  let parsed = parseJson(message)
  result.username = parsed["username"].getStr()
  result.message = parsed["message"].getStr()

proc createMessage(username: string, message: string): string =
  # {:} is table constructor === [(k1,v1), (k2,v2)]
  # % operater converts a type to appropriate JNode
  # '$' will convert JNode to string
  $(%{
        "username": %username,
        "message": %message,
      }
    ) & "\c\l"

when isMainModule:
  block:
    let expected = """{"username":"ravi","message":"hello"}""" & "\c\l"
    let message = createMessage("ravi", "hello")
    doAssert message == expected
