$.fn.tileist = ( options ) ->

	$.fn.cssInject = ( selector, rules ) ->
		if this.is "style"
			string = ""
			string += "#{ selector } {\n"
			for prop, val of rules
				string += "#{ prop } : #{ val };\n"
			string += "}\n"
			this.append string
	
	defaults = 
		layout: "triangle"
		width: 16
		height: 6
		color: "#27ae60"

	settings = $.extend( {}, defaults, options )

	settings.cellWidth = Math.ceil this.width() / settings.width
	settings.cellWidthPct = Math.ceil 100 / settings.width
	settings.cellHeight = Math.ceil this.height() / settings.height

	gridSize = 
		x: settings.width
		y: settings.height

	cell = 
		rectangle: "<div class='tileist-cell tileist-cell-rectangle'></div>"
		triangle: "<div class='tileist-cell tileist-cell-triangle'><div></div><div></div></div>"
		hexagon: "<div class='tileist-cell tileist-cell-hexagon'></div>"

	class TwoDimensionalArray extends Array
		constructor : ( xSize, ySize, fill = "" ) ->
			for x in [0...xSize]
		    this.push []
		    for y in [0...ySize]
		      this[x].push fill

		randomCell : ( flatIndex ) ->
			arr = []
			arr[0] = randomIntFromInterval( 0, this.length - 1 )
			arr[1] = randomIntFromInterval( 0, this[0].length - 1 )

			if flatIndex
				return this.coordToFlatIndex( arr )
			else
				return arr

		coordToFlatIndex : ( coords ) ->
			if  not coords instanceof Array or coords.length isnt 2
				throw "Argument must be an array with length of exactly 2"
			if coords[0] > this.length or coords[1] > this[0].length
				throw "At least one of the coordinates exceeds the bounds of this 2d array."

			return coords[0] * this[0].length + coords[1]

		flatIndexToCoord : ( index ) ->
			throw new TypeError() unless typeof index is "number"
			arr = []
			arr[0] = Math.floor( index / this[0].length )
			arr[1] = index % this[0].length
			return arr

		forEach2d : ( func ) ->
			if this is null or this is undefined
				throw new TypeError()
			if typeof func isnt "function"
				throw new TypeError()
			thisArg = if arguments.length >= 2 then arguments[1] else undefined
			for firstDimArr, x in this
				for secondDimArr, y in this[x]
					func.call( thisArg, this[x][y], x, y, this )

	scaleValues = ( values, scaleMin = 0, scaleMax = 1 ) ->

	  max = Math.max.apply null, values
	  min = Math.min.apply null, values

	  for num in values
	    ((( scaleMax - scaleMin )*( num - min ))/( max - min )) + scaleMin


	randomIntFromInterval = ( min, max ) ->
    return Math.floor Math.random() * ( max - min + 1 ) + min

  # distance between two coordinate points.
	distanceOf = ( origin, location ) ->
		square = ( num ) -> return num * num
		return Math.sqrt square( origin[0] - location[0] ) + square( origin[1] - location[1] )

	colorize = ( $el, dist, odd ) ->
		ratio = ( dist / 4 ) + randomIntFromInterval( -2, 2 ) / 16

		methodA = if ratio < 0 then "lightenByRatio" else "darkenByRatio"
		methodB = if ratio > 0 then "desaturateByRatio" else "saturateByRatio"
		borderSide = if odd then "bottom" else "top"

		absRatio = Math.abs( ratio )

		# don't want to lighen/darken/saturate/desaturate by extreme amounts
		# randomize the ratio a little
		

		$el.css "border-#{ borderSide }-color", "#{ color[methodA]( absRatio )[methodB]( absRatio ) }"




	window.grid = new TwoDimensionalArray gridSize.x, gridSize.y, cell[settings.layout]
	htmlStr = ( "<div class='tileist-column'>#{ column.join( "\n" ) }</div>" for column in grid ).join( "\n" )
	this.append $("<div class='tileist-wrapper'>#{ htmlStr }</div>")

	head = $("head")
	style = $("<style id='css-inject'>").appendTo( head )

	style.cssInject "#{ this.selector } *",
		"box-sizing" : "border-box"

	style.cssInject ".tileist-wrapper",
		"width" : "#{ settings.cellWidth * gridSize.x }px"

	style.cssInject ".tileist-column",
		"width" : "#{ settings.cellWidth }px"
		"float" : "left"

	style.cssInject ".tileist-cell",
		"height" : "#{ settings.cellHeight }px"
		"width"  : "100%"
		"position": "relative"

	style.cssInject ".tileist-cell-triangle div",
		"position": "absolute"

	style.cssInject ".tileist-cell-triangle div:nth-of-type(2)",
		"width" : 0
		"border-top": "0px solid transparent"
		"border-right": "#{ settings.cellWidth }px solid transparent"
		"border-bottom": "#{ settings.cellHeight }px solid transparent"
		"border-left": "0px solid transparent"

	style.cssInject ".tileist-cell-triangle div:nth-of-type(1)",
		"width" : 0
		"border-top": "#{ settings.cellHeight }px solid transparent"
		"border-right": "0px solid transparent"
		"border-bottom": "0px solid transparent"
		"border-left": "#{ settings.cellWidth }px solid transparent"

	grid.cells = $( ".tileist-cell" )
	focus = settings.focus or grid.randomCell()
	grid.focalCell = grid.cells.eq grid.coordToFlatIndex( focus )

	window.distances = []

	color = Color( settings.color )

	distances = do ->
		results = []
		grid.forEach2d ( el, x, y, arr ) ->
			dist = distanceOf( focus, [x, y] )
			index = grid.coordToFlatIndex( [x, y] )
			results[index] = dist
			# grid.cells.eq( index ).attr( "data-focus-distance", "#{ dist }" ) 
		return results

	scaledDistances = scaleValues( distances, -1, 1 )
	for dist, i in scaledDistances
		cell = grid.cells.eq( i )
		if cell.children().length
			cell.children().each ( j ) ->
				colorize $( this ), dist, j % 2
		else
			colorize cell, dist

	# grid.cells.each ( i ) ->

	# 	console.log $( this ).attr( "data-focus-distance" )

	# 	colorize = ( $el, odd ) ->
	# 		num = randomIntFromInterval( -10, 100 )
	# 		methodA = if num < 0 then "lightenByRatio" else "darkenByRatio"
	# 		methodB = if num > 0 then "desaturateByRatio" else "saturateByRatio"
	# 		borderSide = if odd then "bottom" else "top"
	# 		$el.css "border-#{ borderSide }-color", "#{ color[methodA]( num / 150 )[methodB]( num / 150 ) }"

