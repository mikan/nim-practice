proc second() =
    raise newException(IOError, "Somebody set us up the bomb")

proc first() =
    try :
        second()
    except:
        echo("Cannot perform second action because: " &
            getCurrentExceptionMsg())

first()

#[
$ nim c -r list12
Cannot perform second action because: Somebody set us up the bomb
]#
