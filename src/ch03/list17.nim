import asyncdispatch, asyncfile

proc readFiles() {.async.} =
    var file = openAsync("/tmp/test.txt", fmReadWrite)
    let data = await file.readAll()
    echo(data)
    await file.write("Hello!\n")
    file.close()

waitFor readFiles()

#[
$ echo "Test File" > /tmp/test.txt
$ nim c -r list17
$ cat /tmp/test.txt
Hello!
]#
