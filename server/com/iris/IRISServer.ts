class IRISServer {
	constructor(){
		console.log("IRIS Server Initialized..\n");
	}

	start(port:number = 80){
		var http = require('http');
		http.createServer(function (req, res) {
  			res.writeHead(200, {'Content-Type': 'text/plain'});
  			res.end('Example Page\n');
		}).listen(port, '127.0.0.1');
		console.log('IRIS Server running on port '+port);
	}
}