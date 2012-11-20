class IRISClient

	client = null;
	fetchLocation = "http://google.com"

	constructor: () ->

	build: () ->
		cli = @clientTemplate()
		$("body").append(cli)
		@postBuild()
		return 

	postBuild: () ->
		@client = $ "#irisClient"
		@fetchList()
		return

	fetchList: () ->
		client = @client
		location =  @fetchLocation
		$.get(location, {}, (m) ->
			client.find('.qaList').append(m);
			return
		)
		return

	clientTemplate: () ->
		return "<div id=\"irisClient\"> <div class=\"top\"> <b class=\"small\">IRIS - Issue List</b> <a href=\"#\" class=\"close\">x</a> </div> <div class=\"qaList\"> </div> </div>"



$(document).ready( ->
	irisClient = new IRISClient()
	irisClient.build()
)