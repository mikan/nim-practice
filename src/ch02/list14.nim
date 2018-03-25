type Color = enum
    colRed,
    colGreen,
    colBlue

let color: Color = colRed
let color2: Color = colGreen
let color3: Color = colBlue
echo(color, " ", color2, " ", color3)

#[
$ nim c -r list14
colRed colGreen colBlue
]#
