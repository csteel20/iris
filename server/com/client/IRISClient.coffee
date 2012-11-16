class IRISClient

	constructor: () ->

	build: () ->
		cli = @clientTemplate()
		$("body").append(cli)
		return 

	clientTemplate: () ->
		return "<div id=\"irisClient\"> <div class=\"top\"> <b class=\"small\">IRIS - Issue List</b> <a href=\"#\" class=\"close\">x</a> </div>  </div>"


$(document).ready( ->
	irisClient = new IRISClient()
	irisClient.build()
)