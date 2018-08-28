// built-in file system module : allow to work with the file system on computer
var fs = require('fs');
// Every action on a computer is an event
// Objects in Node.js can fire events
var rs = fs.createReadStream('./file.txt');
rs.on('open',function() {
    console.log('The file is open');
})
