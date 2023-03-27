var http = require('http');
var config;
try { 
    config = require('./config.json');
} catch (ex) {
    console.log(ex.stack)
    config = {
        'port': 8080
     };
}

http.createServer(function (req, res) {
    if (config.message)
    {
        res.writeHead(200, {'Content-Type': 'text/plain'});
        res.end(config.message + '\n');
    } else {
        res.writeHead(500, {'Content-Type': 'text/plain'});
        res.end('Ouch\n');
    }
}).listen(config.port);
