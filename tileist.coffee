$.fn.tileist = ( options ) ->

	###
	MIT license
	https://github.com/harthur/color/blob/master/color.js
	Color.js by harthur	
	###
	`
	if("undefined"==typeof net){var net={}}if(!net.brehaut){net.brehaut={}}(function(){"use strict";function p(e,t){e=e.toString();var n=[];for(var r=0,i=Math.max(t-e.length,0);r<i;r++){n.push("0")}n.push(e);return n.join("")}function d(e){return e.slice(0,1).toUpperCase()+e.slice(1)}function v(e){return e.replace(/^\s+|\s+$/g,"")}function m(e){return function(){var t=this.clone();e.apply(t,arguments);return t}}function g(e,t){function s(e){return function(){return e.apply(this[i](),arguments)}}function v(){}function m(){return new v}var n=h(f);var r=[];var i="to"+d(e);for(var o in t)if(t.hasOwnProperty(o)){n[o]=t[o];var u=n[o];if(o.slice(0,1)=="_"){continue}if(!(o in f)&&"function"==typeof u){f[o]=s(u)}else if("function"!=typeof u){r.push(o);var a="get"+d(o);var p="set"+d(o);f[a]=s(n[a]=function(e){return function(){return this[e]}}(o));f[p]=s(n[p]=function(e){return function(t){var n=this.clone();n[e]=t;return n}}(o))}}v.prototype=n;c[e]=m;n.clone=function(){var e=m();for(var t=0,n=r.length;t<n;t++){var i=r[t];e[i]=this[i]}return e};f[i]=function(){return m()};l.push(n);return n}function b(e){return f.fromObject(e)}var e={aliceblue:"#F0F8FF",antiquewhite:"#FAEBD7",aqua:"#00FFFF",aquamarine:"#7FFFD4",azure:"#F0FFFF",beige:"#F5F5DC",bisque:"#FFE4C4",black:"#000000",blanchedalmond:"#FFEBCD",blue:"#0000FF",blueviolet:"#8A2BE2",brown:"#A52A2A",burlywood:"#DEB887",cadetblue:"#5F9EA0",chartreuse:"#7FFF00",chocolate:"#D2691E",coral:"#FF7F50",cornflowerblue:"#6495ED",cornsilk:"#FFF8DC",crimson:"#DC143C",cyan:"#00FFFF",darkblue:"#00008B",darkcyan:"#008B8B",darkgoldenrod:"#B8860B",darkgray:"#A9A9A9",darkgrey:"#A9A9A9",darkgreen:"#006400",darkkhaki:"#BDB76B",darkmagenta:"#8B008B",darkolivegreen:"#556B2F",darkorange:"#FF8C00",darkorchid:"#9932CC",darkred:"#8B0000",darksalmon:"#E9967A",darkseagreen:"#8FBC8F",darkslateblue:"#483D8B",darkslategray:"#2F4F4F",darkslategrey:"#2F4F4F",darkturquoise:"#00CED1",darkviolet:"#9400D3",deeppink:"#FF1493",deepskyblue:"#00BFFF",dimgray:"#696969",dimgrey:"#696969",dodgerblue:"#1E90FF",firebrick:"#B22222",floralwhite:"#FFFAF0",forestgreen:"#228B22",fuchsia:"#FF00FF",gainsboro:"#DCDCDC",ghostwhite:"#F8F8FF",gold:"#FFD700",goldenrod:"#DAA520",gray:"#808080",grey:"#808080",green:"#008000",greenyellow:"#ADFF2F",honeydew:"#F0FFF0",hotpink:"#FF69B4",indianred:"#CD5C5C",indigo:"#4B0082",ivory:"#FFFFF0",khaki:"#F0E68C",lavender:"#E6E6FA",lavenderblush:"#FFF0F5",lawngreen:"#7CFC00",lemonchiffon:"#FFFACD",lightblue:"#ADD8E6",lightcoral:"#F08080",lightcyan:"#E0FFFF",lightgoldenrodyellow:"#FAFAD2",lightgray:"#D3D3D3",lightgrey:"#D3D3D3",lightgreen:"#90EE90",lightpink:"#FFB6C1",lightsalmon:"#FFA07A",lightseagreen:"#20B2AA",lightskyblue:"#87CEFA",lightslategray:"#778899",lightslategrey:"#778899",lightsteelblue:"#B0C4DE",lightyellow:"#FFFFE0",lime:"#00FF00",limegreen:"#32CD32",linen:"#FAF0E6",magenta:"#FF00FF",maroon:"#800000",mediumaquamarine:"#66CDAA",mediumblue:"#0000CD",mediumorchid:"#BA55D3",mediumpurple:"#9370D8",mediumseagreen:"#3CB371",mediumslateblue:"#7B68EE",mediumspringgreen:"#00FA9A",mediumturquoise:"#48D1CC",mediumvioletred:"#C71585",midnightblue:"#191970",mintcream:"#F5FFFA",mistyrose:"#FFE4E1",moccasin:"#FFE4B5",navajowhite:"#FFDEAD",navy:"#000080",oldlace:"#FDF5E6",olive:"#808000",olivedrab:"#6B8E23",orange:"#FFA500",orangered:"#FF4500",orchid:"#DA70D6",palegoldenrod:"#EEE8AA",palegreen:"#98FB98",paleturquoise:"#AFEEEE",palevioletred:"#D87093",papayawhip:"#FFEFD5",peachpuff:"#FFDAB9",peru:"#CD853F",pink:"#FFC0CB",plum:"#DDA0DD",powderblue:"#B0E0E6",purple:"#800080",red:"#FF0000",rosybrown:"#BC8F8F",royalblue:"#4169E1",saddlebrown:"#8B4513",salmon:"#FA8072",sandybrown:"#F4A460",seagreen:"#2E8B57",seashell:"#FFF5EE",sienna:"#A0522D",silver:"#C0C0C0",skyblue:"#87CEEB",slateblue:"#6A5ACD",slategray:"#708090",slategrey:"#708090",snow:"#FFFAFA",springgreen:"#00FF7F",steelblue:"#4682B4",tan:"#D2B48C",teal:"#008080",thistle:"#D8BFD8",tomato:"#FF6347",turquoise:"#40E0D0",violet:"#EE82EE",wheat:"#F5DEB3",white:"#FFFFFF",whitesmoke:"#F5F5F5",yellow:"#FFFF00",yellowgreen:'#9ACD32"'};var t="(?:\\+|-)?\\d+";var n="(?:\\+|-)?\\d*\\.\\d+";var r="(?:"+t+")|(?:"+n+")";t="("+t+")";n="("+n+")";r="("+r+")";var i=r+"%";var s="\\s*?";var o=new RegExp(["^hsl(a?)\\(",r,",",i,",",i,"(,(",r,"))?\\)$"].join(s));var u=new RegExp(["^rgb(a?)\\(",t,",",t,",",t,"(,(",r,"))?\\)$"].join(s));var a=new RegExp(["^rgb(a?)\\(",i,",",i,",",i,"(,(",r,"))?\\)$"].join(s));var f;var l=[];var c={};if(!this.object){this.object=function(e){function t(){}t.prototype=e;return new t}}var h=this.object;f={fromObject:function(e){if(!e){return h(f)}for(var t=0,n=l.length;t<n;t++){var r=l[t].fromObject(e);if(r){return r}}return h(f)},toString:function(){return this.toCSS()}};var y=null;g("RGB",{red:0,green:0,blue:0,alpha:0,getLuminance:function(){return this.red*.2126+this.green*.7152+this.blue*.0722},blend:function(e,t){e=e.toRGB();t=Math.min(Math.max(t,0),1);var n=this.clone();n.red=n.red*(1-t)+e.red*t;n.green=n.green*(1-t)+e.green*t;n.blue=n.blue*(1-t)+e.blue*t;n.alpha=n.alpha*(1-t)+e.alpha*t;return n},fromObject:function(e){if(e instanceof Array){return this._fromRGBArray(e)}if("string"==typeof e){return this._fromCSS(v(e))}if(e.hasOwnProperty("red")&&e.hasOwnProperty("green")&&e.hasOwnProperty("blue")){return this._fromRGB(e)}},_stringParsers:[function(e){function n(t,n){var r=e.match(t);if(!r||!!r[1]+!!r[5]===1){return null}var i=c.RGB();i.red=Math.min(1,Math.max(0,r[2]/n));i.green=Math.min(1,Math.max(0,r[3]/n));i.blue=Math.min(1,Math.max(0,r[4]/n));i.alpha=!!r[5]?Math.min(Math.max(parseFloat(r[6]),0),1):1;return i}e=v(e);var t=n(u,255);if(t){return t}return n(a,100)},function(t){var n=t.toLowerCase();if(n in e){t=e[n]}if(!t.match(/^#([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$/)){return}t=t.replace(/^#/,"");var r=t.length/3;var i=Math.pow(16,r)-1;var s=c.RGB();s.red=parseInt(t.slice(0,r),16)/i;s.green=parseInt(t.slice(r*1,r*2),16)/i;s.blue=parseInt(t.slice(r*2),16)/i;s.alpha=1;return s},function(e){if(e.toLowerCase()!=="transparent")return;return y}],_fromCSS:function(e){var t=null;for(var n=0,r=this._stringParsers.length;n<r;n++){t=this._stringParsers[n](e);if(t)return t}},_fromRGB:function(e){var t=c.RGB();t.red=e.red;t.green=e.green;t.blue=e.blue;t.alpha=e.hasOwnProperty("alpha")?e.alpha:1;return t},_fromRGBArray:function(e){var t=c.RGB();t.red=Math.max(0,Math.min(1,e[0]/255));t.green=Math.max(0,Math.min(1,e[1]/255));t.blue=Math.max(0,Math.min(1,e[2]/255));t.alpha=e[3]!==undefined?Math.max(0,Math.min(1,e[3])):1;return t},toCSSHex:function(e){e=e||2;var t=Math.pow(16,e)-1;var n=["#",p(Math.round(this.red*t).toString(16).toUpperCase(),e),p(Math.round(this.green*t).toString(16).toUpperCase(),e),p(Math.round(this.blue*t).toString(16).toUpperCase(),e)];return n.join("")},toCSS:function(e){if(this.alpha===1)return this.toCSSHex(e);var t=255;var n=["rgba(",Math.max(0,Math.min(t,Math.round(this.red*t))),",",Math.max(0,Math.min(t,Math.round(this.green*t))),",",Math.max(0,Math.min(t,Math.round(this.blue*t))),",",Math.max(0,Math.min(1,this.alpha)),")"];return n.join("")},toHSV:function(){var e=c.HSV();var t,n,r;t=Math.min(this.red,this.green,this.blue);n=Math.max(this.red,this.green,this.blue);e.value=n;r=n-t;if(r==0){e.hue=e.saturation=0}else{e.saturation=r/n;if(this.red==n){e.hue=(this.green-this.blue)/r}else if(this.green==n){e.hue=2+(this.blue-this.red)/r}else{e.hue=4+(this.red-this.green)/r}e.hue=(e.hue*60+360)%360}e.alpha=this.alpha;return e},toHSL:function(){return this.toHSV().toHSL()},toRGB:function(){return this.clone()}});y=f.fromObject({red:0,blue:0,green:0,alpha:0});g("HSV",{hue:0,saturation:0,value:1,alpha:1,shiftHue:m(function(e){var t=(this.hue+e)%360;if(t<0){t=(360+t)%360}this.hue=t}),devalueByAmount:m(function(e){this.value=Math.min(1,Math.max(this.value-e,0))}),devalueByRatio:m(function(e){this.value=Math.min(1,Math.max(this.value*(1-e),0))}),valueByAmount:m(function(e){this.value=Math.min(1,Math.max(this.value+e,0))}),valueByRatio:m(function(e){this.value=Math.min(1,Math.max(this.value*(1+e),0))}),desaturateByAmount:m(function(e){this.saturation=Math.min(1,Math.max(this.saturation-e,0))}),desaturateByRatio:m(function(e){this.saturation=Math.min(1,Math.max(this.saturation*(1-e),0))}),saturateByAmount:m(function(e){this.saturation=Math.min(1,Math.max(this.saturation+e,0))}),saturateByRatio:m(function(e){this.saturation=Math.min(1,Math.max(this.saturation*(1+e),0))}),schemeFromDegrees:function(e){var t=[];for(var n=0,r=e.length;n<r;n++){var i=this.clone();i.hue=(this.hue+e[n])%360;t.push(i)}return t},complementaryScheme:function(){return this.schemeFromDegrees([0,180])},splitComplementaryScheme:function(){return this.schemeFromDegrees([0,150,320])},splitComplementaryCWScheme:function(){return this.schemeFromDegrees([0,150,300])},splitComplementaryCCWScheme:function(){return this.schemeFromDegrees([0,60,210])},triadicScheme:function(){return this.schemeFromDegrees([0,120,240])},clashScheme:function(){return this.schemeFromDegrees([0,90,270])},tetradicScheme:function(){return this.schemeFromDegrees([0,90,180,270])},fourToneCWScheme:function(){return this.schemeFromDegrees([0,60,180,240])},fourToneCCWScheme:function(){return this.schemeFromDegrees([0,120,180,300])},fiveToneAScheme:function(){return this.schemeFromDegrees([0,115,155,205,245])},fiveToneBScheme:function(){return this.schemeFromDegrees([0,40,90,130,245])},fiveToneCScheme:function(){return this.schemeFromDegrees([0,50,90,205,320])},fiveToneDScheme:function(){return this.schemeFromDegrees([0,40,155,270,310])},fiveToneEScheme:function(){return this.schemeFromDegrees([0,115,230,270,320])},sixToneCWScheme:function(){return this.schemeFromDegrees([0,30,120,150,240,270])},sixToneCCWScheme:function(){return this.schemeFromDegrees([0,90,120,210,240,330])},neutralScheme:function(){return this.schemeFromDegrees([0,15,30,45,60,75])},analogousScheme:function(){return this.schemeFromDegrees([0,30,60,90,120,150])},fromObject:function(e){if(e.hasOwnProperty("hue")&&e.hasOwnProperty("saturation")&&e.hasOwnProperty("value")){var t=c.HSV();t.hue=e.hue;t.saturation=e.saturation;t.value=e.value;t.alpha=e.hasOwnProperty("alpha")?e.alpha:1;return t}return null},_normalise:function(){this.hue%=360;this.saturation=Math.min(Math.max(0,this.saturation),1);this.value=Math.min(Math.max(0,this.value));this.alpha=Math.min(1,Math.max(0,this.alpha))},toRGB:function(){this._normalise();var e=c.RGB();var t;var n,r,i,s;if(this.saturation===0){e.red=this.value;e.green=this.value;e.blue=this.value;e.alpha=this.alpha;return e}var o=this.hue/60;t=Math.floor(o);n=o-t;r=this.value*(1-this.saturation);i=this.value*(1-this.saturation*n);s=this.value*(1-this.saturation*(1-n));switch(t){case 0:e.red=this.value;e.green=s;e.blue=r;break;case 1:e.red=i;e.green=this.value;e.blue=r;break;case 2:e.red=r;e.green=this.value;e.blue=s;break;case 3:e.red=r;e.green=i;e.blue=this.value;break;case 4:e.red=s;e.green=r;e.blue=this.value;break;default:e.red=this.value;e.green=r;e.blue=i;break}e.alpha=this.alpha;return e},toHSL:function(){this._normalise();var e=c.HSL();e.hue=this.hue;var t=(2-this.saturation)*this.value,n=this.saturation*this.value;if(t&&2-t){n/=t<=1?t:2-t}t/=2;e.saturation=n;e.lightness=t;e.alpha=this.alpha;return e},toHSV:function(){return this.clone()}});g("HSL",{hue:0,saturation:0,lightness:0,alpha:1,darkenByAmount:m(function(e){this.lightness=Math.min(1,Math.max(this.lightness-e,0))}),darkenByRatio:m(function(e){this.lightness=Math.min(1,Math.max(this.lightness*(1-e),0))}),lightenByAmount:m(function(e){this.lightness=Math.min(1,Math.max(this.lightness+e,0))}),lightenByRatio:m(function(e){this.lightness=Math.min(1,Math.max(this.lightness*(1+e),0))}),fromObject:function(e){if("string"==typeof e){return this._fromCSS(e)}if(e.hasOwnProperty("hue")&&e.hasOwnProperty("saturation")&&e.hasOwnProperty("lightness")){return this._fromHSL(e)}},_fromCSS:function(e){var t=v(e).match(o);if(!t||!!t[1]+!!t[5]===1){return null}var n=c.HSL();n.hue=(t[2]%360+360)%360;n.saturation=Math.max(0,Math.min(parseInt(t[3],10)/100,1));n.lightness=Math.max(0,Math.min(parseInt(t[4],10)/100,1));n.alpha=!!t[5]?Math.max(0,Math.min(1,parseFloat(t[6]))):1;return n},_fromHSL:function(e){var t=c.HSL();t.hue=e.hue;t.saturation=e.saturation;t.lightness=e.lightness;t.alpha=e.hasOwnProperty("alpha")?e.alpha:1;return t},_normalise:function(){this.hue=(this.hue%360+360)%360;this.saturation=Math.min(Math.max(0,this.saturation),1);this.lightness=Math.min(Math.max(0,this.lightness));this.alpha=Math.min(1,Math.max(0,this.alpha))},toHSL:function(){return this.clone()},toHSV:function(){this._normalise();var e=c.HSV();e.hue=this.hue;var t=2*this.lightness,n=this.saturation*(t<=1?t:2-t);e.value=(t+n)/2;e.saturation=2*n/(t+n)||0;e.alpha=this.alpha;return e},toRGB:function(){return this.toHSV().toRGB()}});b.isValid=function(e){var t,n=b(e);var r=0;for(t in n){if(n.hasOwnProperty(t)){r++}}return r>0};net.brehaut.Color=b}).call(net.brehaut);var module;if(module){module.exports.Color=net.brehaut.Color}
	`

	Color = net.brehaut.Color

	###
	vein.js - version 0.2
	https://github.com/israelidanny/veinjs
	by Danny Povolotski (dannypovolotski@gmail.com)
	###
	`	
	!function(e,t){"undefined"!=typeof module?module.exports=t():"function"==typeof define&&define.amd?define(e,t):this[e]=t()}("vein",function(){var e=function(){};return e.prototype.getStylesheet=function(){var e=this;return e.element||(e.element=document.createElement("style"),e.element.setAttribute("type","text/css"),e.element.setAttribute("id","vein"),document.getElementsByTagName("head")[0].appendChild(e.element),e.stylesheet=document.styleSheets[document.styleSheets.length-1],e.rules=e.stylesheet[document.all?"rules":"cssRules"]),e.element},e.prototype.inject=function(e,t){var n,l,s,r,u,o,i,h,f,y=this;for(y.getStylesheet(),"string"==typeof e&&(e=[e]),n=0,l=e.length;l>n;n++){for(s=[],r=0,u=y.rules.length;u>r;r++)y.rules[r].selectorText===e[n]&&(null===t?y.stylesheet.deleteRule(r):s.push(y.rules[r]));if(null===t)return;if(0===s.length){o=[];for(i in t)t.hasOwnProperty(i)&&o.push(i+": "+t[i]+";");o=e[n]+"{"+o.join("")+"}",y.stylesheet.insertRule(o,y.rules.length)}else for(h=0,f=s.length;f>h;h++)for(i in t)t.hasOwnProperty(i)&&s[h].style.setProperty(i,t[i],"")}return y},new e});
	`

	defaults = 
		layout: "triangle"
		width: 40
		height: 80
		color: "#27ae60"

	settings = $.extend( {}, defaults, options )

	gridSize = 
		x: do =>
			return Math.ceil( this.width() / settings.width )
		y: do =>
			return Math.ceil( this.height() / settings.height )

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
			arr[0] = randomIntFromInterval( 0, this[0].length - 1 )
			arr[1] = randomIntFromInterval( 0, this.length - 1 )

			if flatIndex
				return this.coordToFlatIndex( arr )
			else
				return arr

		coordToFlatIndex : ( coords ) ->
			return ( this.length * coords[0] ) + coords[1]

		flatIndexToCoord : ( index ) ->
			arr = []
			arr[0] = Math.floor( index / this.length )
			arr[1] = index % this.length
			return arr

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

	normalize = ( numbers, min = 0, max = 1 ) ->
	  maxVal = numbers[0]
	  minVal = numbers[0]
	  for num in numbers
	    maxVal = Math.max maxVal, num
	    minVal = Math.min minVal, num
	  for num in numbers
	    ( num - minVal ) / ( max - min )

	randomIntFromInterval = ( min,max ) ->
    return Math.floor( Math.random() * ( max - min + 1 ) + min )

	distanceOf = ( origin, location ) ->
		square = ( num ) -> return num * num
		return Math.sqrt square( origin[0] - location[0] ) + square( origin[1] - location[1] )

	window.grid = new TwoDimensionalArray gridSize.x, gridSize.y, cell[settings.layout]
	htmlStr = ( "<div class='tileist-column'>#{ column.join( "\n" ) }</div>" for column in grid ).join( "\n" )
	this.append $("<div class='tileist-wrapper'>#{ htmlStr }</div>")


	# use CSS injection for this.
	this.find( "*" ).css
		"box-sizing" : "border-box"

	$( ".tileist-wrapper" ).css
		width: settings.width * gridSize.x
	$( ".tileist-column" ).css
		width: settings.width
		float: "left"
	$( ".tileist-cell" ).css
		height: settings.height
		width: settings.width
		# border: "1px solid green"
		float: "left"

	grid.cells = $( ".tileist-cell" )
	focus = grid.randomCell()
	grid.focalCell = grid.cells.eq grid.coordToFlatIndex( focus )

	distances = []

	color = Color( settings.color )

	grid.cells.each ( i ) ->

		colorize = ( $el ) ->
			num = randomIntFromInterval(0, 100)
			method = if num < 50 then "lightenByRatio" else "darkenByRatio"
			$el.css
				borderTop: "0px solid transparent"
				borderRight: "#{ settings.width }px solid transparent"
				borderBottom: "#{ settings.height }px solid #{ color[method]( num / 200 ) }"
				borderLeft: "0px solid transparent"

			console.log ( num / 200 )

		if $( this ).children().length
			$( this ).children().each ->
				colorize $( this )
		else
			colorize $( this )


	vein.inject ".tileist-cell-triangle div:nth-of-type(2)",
		"-webkit-transform" : "rotate(180deg) translateY(#{ settings.height }px)"
		"-moz-transform" : "rotate(180deg) translateY(#{ settings.height }px)"
		"transform" : "rotate(180deg) translateY(#{ settings.height }px)"

	$( this ).css
		overflow: "hidden"

	# 	distances.push this.dist = distanceOf( focus, coords )

	# normalDist = normalize( distances )

	# grid.cells.each ->
