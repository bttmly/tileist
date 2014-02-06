$.fn.tileist = ( options ) ->

	defaults = 
		layout: "triangle"
		width: 40
		height: 80
		color: blue

	settings = $.extend( {}, defaults, options )

	gridSize = 
		x: do =>
			return Math.ceil( this.width() / settings.width )
		y: do =>
			return Math.ceil( this.height() / settings.height )

	cell = 
		rectangle: "<div class='tileist-cell tileist-cell-rectangle'></div>"
		triangle: "<div class='tileist-cell tileist-celltriangle'><div></div><div></div></div>"
		hexagon: "<div class='tileist-cell tileist-cell-hexagon'></div>"

	class TwoDimensionalArray extends Array
		constructor : ( xSize, ySize, fill = "" ) ->
			for x in [0...xSize]
		    this.push []
		    for y in [0...ySize]
		      this[x].push fill

		# flatten : =>
		# 	merged = []
		# 	return merged.concat.apply( merged, this )

		# each2d : ( func ) =>
		# 	if typeof func isnt "function"
		# 		throw new TypeError()
		# 	for x in this.length
		# 		for y in x
		# 			func( this[x][y], x, y, this )
		# 	return this

	distanceOf = ( origin, location ) ->
		square = ( num ) -> return num * num
		return Math.sqrt( square( origin[0] - location[0] ) + square( origin[1] - location[1] ) )

	grid = new TwoDimensionalArray gridSize.x, gridSize.y cell[settings.layout]
	this.append = ( "<div class='tileist-row'>#{ column.join( "\n" ) }</div>" for column in grid ).join( "\n" )
		
