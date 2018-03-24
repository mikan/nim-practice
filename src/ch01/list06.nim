type
    Dog = object

proc bark(self: Dog) =
    echo("Woof!")

let dog = Dog()
dog.bark()

#[
$ nim c -r list06
Woof!
]#
