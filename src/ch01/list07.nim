import sequtils, future, strutils
let list = @["Dominik Picheta", "Andreas Rumpf", "Desmond Hume"]
list.map(
    (x: string) -> (string, string) => (x.split[0], x.split[1])
).echo

#[
$ nim c -r list07
@[(Field0: "Dominik", Field1: "Picheta"), (Field0: "Andreas", Field1: "Rumpf"), (Field0: "Desmond", Field1: "Hume")]
]#
