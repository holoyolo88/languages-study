// require() : include a module
var http = require('http');
// built-in file system module : allow to work with the file system on computer
var fs = require('fs');
// createServer() : create an HTTP server that listens to server ports and gives a response back to the client.
// : will be executed when someone tries to access the computer on port 8080
// function : req argument represents the request from the client, as an object(http.IncomingMessage object)
http.createServer(function (req, res) {
    // readfile() : read fimes on computer
    fs.readFile('file.html',function(err,data){
    // writeHead() : if the response from the HTTP server is supposed to be displayed as HTML
    // : include HTTP header with the correct content type
    // : first argument is the status code
    // : second argument is an object containing the response headers
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write(data);
    res.end();   
    });  
}).listen(8080);