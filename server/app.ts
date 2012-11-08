import Server = module("./com/iris/IRISServer");

var irisServer = new Server.IRISServer(80);
irisServer.start();