import json

type Message* = object
  username*: string
  message*: string

proc parseMessage*(message: string): Message =

