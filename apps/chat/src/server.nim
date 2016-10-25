import asyncdispatch, asyncnet

type
  Client = ref object
    socket: AsyncSocket
    address: string
    id: int
    connected: bool

  Server = ref object
    socket: AsyncSocket
    clients: seq[Client]
