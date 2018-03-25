proc fillString(): string =
    result = ""
    echo("Generating string")
    for i in 0 .. 4:
        result.add($i)

const count = fillString()
echo(count)

#[
$ nim c -r list08
01234
]#
