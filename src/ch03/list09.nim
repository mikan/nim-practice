import json
assert parseJson("null").kind == JNull
assert parseJson("true").kind == JBool
assert parseJson("42").kind == JInt
assert parseJson("\"Hi\"").kind == JString
assert parseJson("""{"key": "value"}""").kind == JObject
assert parseJson("[1, 2, 3, 4]").kind == JArray
echo("OK")

#[
$ $ nim c -r list08
OK
]#
