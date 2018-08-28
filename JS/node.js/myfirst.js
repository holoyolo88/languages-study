// NPM : package manager for Node.js packages or modules
// : creates a folder named "node_modules", where the package will be placed
// : all installed package will be in this folder
// Package : contains all the files needed for a module
// modules : JS libraries that can included in project

// require() : include a module
var http = require('http');
// Upper-Case module : convert output into upper-case letters
var uc = require('upper-case');
// createServer() : create an HTTP server that listens to server ports and gives a response back to the client.
// : will be executed when someone tries to access the computer on port 8080
// function : req argument represents the request from the client, as an object(http.IncomingMessage object)
http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write(uc("Hello World!"));
    res.end();
}).listen(8080);

