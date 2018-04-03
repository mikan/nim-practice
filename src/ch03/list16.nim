import asyncdispatch, asyncfile

var file = openAsync("/etc/passwd")
let dataFut = file.readAll()
dataFut.callback =
    proc (future: Future[string]) =
        echo(future.read())

asyncdispatch.runForever()

#[
$ nim c -r list16
##
# User Database
#

...

nobody:*:-2:-2:Unprivileged User:/var/empty:/usr/bin/false
root:*:0:0:System Administrator:/var/root:/bin/sh

...

list16.nim(9)            list16
asyncdispatch.nim(1507)  runForever
asyncdispatch.nim(1511)  poll
asyncdispatch.nim(1230)  runOnce
Error: unhandled exception: No handles or timers registered in dispatcher. [ValueError]
]#
