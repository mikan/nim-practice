import json

proc createMessage*(username, message: string): string =
    result = $(%{
        "username": %username,
        "message": %message
    }) & "\c\l"

echo(createMessage("foo", "bar"))

#[
$ nim c -r list12
{"username":"foo","message":"bar"}

]#
