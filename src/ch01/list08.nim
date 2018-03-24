import strutils
let list = @["Dominik Picheta", "Andreas Rumpf", "Desmond Hume"]
for name in list:
    echo((name.split[0], name.split[1]))

#[
$ nim c -r list08
(Field0: "Dominik", Field1: "Picheta")
(Field0: "Andreas", Field1: "Rumpf")
(Field0: "Desmond", Field1: "Hume")
]#
