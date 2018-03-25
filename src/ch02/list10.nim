proc second() =
    raise newException(IOError, "Somebody set us up the bomb")

proc first() =
    second()

first()

#[
$ nim c -r list10
list10.nim(7)            list10
list10.nim(5)            first
list10.nim(2)            second
Error: unhandled exception: Somebody set us up the bomb [IOError]
]#
