import os, threadpool

echo("Chat application started")
if paramCount() == 0:
    quit("Please specify the server address, e.g. ./client localhost")
let serverAddr = paramstr(1)
echo("Connecting to ", serverAddr)
while true:
    let message = spawn stdin.readLine()
    echo("sending \"", ^message, "\"")

#[
$ nim c -r --threads:on list05.nim localhost
Chat application started
Connecting to localhost
hoge
sending "hoge"
fuga
sending "fuga"
piyo
sending "piyo"
]#
