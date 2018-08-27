// require() : include a module
var http = require('http');
// Formidable module : C:\Users\Your Name>npm install formidable
// : for working with file uploads
var formidable = require('formidable');
// built-in file system module : allow to work with the file system on computer
var fs = require('fs');
// createServer() : create an HTTP server that listens to server ports and gives a response back to the client.
// : will be executed when someone tries to access the computer on port 8080
// function : req argument represents the request from the client, as an object(http.IncomingMessage object)
http.createServer(function (req, res) {
    if (req.url == '/fileupload') {
        // parse the uploaded file once it reaches the server
        // When the file is uploaded and parsed, it gets placed on a *temporary folder on computer
        var form = new formidable.IncomingForm();
        form.parse(req, function (err, fields, files) {
          // files : object that find path to the directory
          // move the file to the folder of choice
          var oldpath = files.filetoupload.path;
          var newpath = 'C:/Users/Your Name/' + files.filetoupload.name;
          res.write('File uploaded');
          res.end();
        });
    }else{
    res.writeHead(200, {'Content-Type': 'text/html'});
    // enctype : specify the value of the Content-Type HTTP header included in the request generated when the form is submitted
    res.write('<form action="fileupload" method="post" enctype="multipart/form-data">');
    res.write('<input type="file" name="filetoupload"><br>');
    res.write('<input type="submit">');
    res.write('</form>');
    return res.end();  
    }
}).listen(8080);