import json

type
    Message* = object
        username*: string
        message*: string

proc parseMessage*(data: string): Message =
    let dataJson = parseJson(data)
    result.username = dataJson["username"].getStr()
    result.message = dataJson["message"].getStr()

echo(parseMessage("{\"username\":\"foo\",\"message\":\"bar\"}"))

#[
$ nim c -r list10
(username: "foo", message: "bar")
]#
