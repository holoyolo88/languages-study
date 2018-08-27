// require() : include a module
var http = require('http');
// built-in url module : split the query string into readable parts
var url = require('url')
var adr = 'http://localhost:8080/default.htm?year=2017&month=february';
var q = url.parse(adr, true);
//returns 'localhost:8080'
console.log(q.host); 
//returns '/default.htm'
console.log(q.pathname); 
//returns '?year=2017&month=february'
console.log(q.search); 
//returns an object: { year: 2017, month: 'february' }
var qdata = q.query;
//returns 'february'
console.log(qdata.month); 