import asyncdispatch, asyncnet

type
    Client = ref object
        socket: AsyncSocket
        netAddr: string
        id: int
        connected: bool
    
    Server = ref object
        socket: AsyncSocket
        clients: seq[Client]

var sv = new Server
echo(sv.clients.len)

#[
$ nim c -r list13
0
]#
