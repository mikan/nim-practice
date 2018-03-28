import os

echo("Chat application started")

if paramCount() == 0:
    quit("Please specify the server address, e.g. ./client localhost")

let serverAddr = paramStr(1)
echo("Connecting to ", serverAddr)

#[
# nim c -r list03
$ ./list03 localhost
Chat application started
Connecting to localhost
]#
