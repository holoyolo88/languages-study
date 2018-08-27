// built-in file system module : allow to work with the file system on computer
var fs = require('fs');
// createServer() : create an HTTP server that listens to server ports and gives a response back to the client.
// : will be executed when someone tries to access the computer on port 8080
// function : req argument represents the request from the client, as an object(http.IncomingMessage object)
http.createServer(function (req, res) {
    // rename() :  renames the specified file
    fs.rename('file3.html','file2.html',function(err){
    if(err) throw err;
    console.log('File Renamed!')  
    });  
}).listen(8080);