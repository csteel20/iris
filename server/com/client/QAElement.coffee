class QAElement
	_x = 0
	_y = 0
	_description = null
	_title = null

	constructor: (id) ->
		if id != null
			@fetch(id)

	create: (qaObject) ->
		@_x = qaObject.x
		@_y = qaObject.y
		@_id = qaObject.id
		@title = qaObject.title
		@description = qaObject.description
		return true

	destroy: () ->
		kill this
		return true

	getPosition: () ->
		return {X:@_x, Y:@_y}

	fetch: (id) ->
		#FETCH AJAX
		ajaxResult = {id:0, x:0,y:0,title:"Test",description:"Test Also"}
		@create(ajaxResult);
		return true;
	