var fs = require('fs');
fs.readFile('/etc/passwd', function (err, data) {
    if (err) throw err;
    console.log(data);
});

/*
$ node list15.js
<Buffer 23 23 0a ...
>
*/
