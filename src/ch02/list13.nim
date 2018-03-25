type
    PersonObj = object
        name: string
        age: int
    PersonRef = ref PersonObj

# proc setName(person: PersonObj) =
#     person.name = "George"

proc setName(person: PersonRef) =
    person.name = "George"

#[
$ nim c -r list13
list13.nim(8, 11) Error: 'person.name' cannot be assigned to
]#
