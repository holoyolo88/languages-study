// require() : include a module
var http = require('http');
// built-in HTTP module : allows Node.js to transfer data over the (HTTP)
var dt = require('./myfirstmodule');
// createServer() : create an HTTP server that listens to server ports and gives a response back to the client.
// : will be executed when someone tries to access the computer on port 8080
// function : req argument represents the request from the client, as an object(http.IncomingMessage object)
http.createServer(function (req, res) {
    // writeHead() : if the response from the HTTP server is supposed to be displayed as HTML
    // : include HTTP header with the correct content type
    // : first argument is the status code
    // : second argument is an object containing the response headers
    res.writeHead(200, {'Content-Type': 'text/html'});
    // write() : write a response to the client
    // url : object's property which holds the part of the url that comes after the domain name
    res.write(req.url);
    // end() : end the response
    res.end();
}).listen(8080);