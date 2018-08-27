// require() : include a module
var http = require('http');
// built-in HTTP module : allows Node.js to transfer data over the (HTTP)
var dt = require('./myfirstmodule');
// createServer() : create an HTTP server that listens to server ports and gives a response back to the client.
http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/html'});
    // write() : write a response to the client
    res.write("The date and time are currently: "+dt.myDateTime());
    // end() : end the response
    res.end();
}).listen(8080);