try:
    proc second() =
        raise newException(IOError, "Somebody set us up the bomb")
    
    proc first() =
        second()
    
    first()
except IOError:
    echo("except IOError")
except:
    echo("except unknown error")

#[
$ nim c -r list11
except IOError
]#
