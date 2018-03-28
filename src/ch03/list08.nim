import json

type
    Message* = object
        username*: string
        message*: string

proc parseMessage*(data: string): Message =
    let dataJson = parseJson(data)
    # demo code below
    echo(dataJson)
    return Message()

echo(parseMessage("{\"username\":\"foo\",\"message\":\"bar\"}"))

#[
$ nim c -r list08
{"username":"foo","message":"bar"}
(username: nil, message: nil)
]#
