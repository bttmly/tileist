// Generated by CoffeeScript 1.6.3
var __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

$.fn.tileist = function(options) {
  var TileistCell, TwoDimensionalArray, cell, color, colorize, column, defaults, dist, distanceOf, distances, focus, grid, gridSize, head, htmlStr, i, randomIntFromInterval, scaleValues, scaledDistances, settings, square, style, _i, _len;
  $(this).find(".tileist-wrapper").remove();
  $("#tileist-styles").filter("style").remove();
  $.fn.cssInject = function(selector, rules) {
    var prop, string, val;
    if (this.is("style")) {
      string = "";
      string += "" + selector + " {\n";
      for (prop in rules) {
        val = rules[prop];
        string += "" + prop + " : " + val + ";\n";
      }
      string += "}\n";
      return this.append(string);
    } else {
      throw "$.fn.cssInject can only be used on <style> elements";
    }
  };
  defaults = {
    layout: "triangle",
    width: 16,
    height: 6,
    color: "#27ae60"
  };
  settings = $.extend({}, defaults, options);
  settings.cellWidth = Math.ceil(this.width() / settings.width);
  settings.cellWidthPct = Math.ceil(100 / settings.width);
  settings.cellHeight = Math.ceil(this.height() / settings.height);
  gridSize = {
    x: settings.width,
    y: settings.height
  };
  cell = {
    rectangle: "<div class='tileist-cell tileist-cell-rectangle'></div>",
    triangle: "<div class='tileist-cell tileist-cell-triangle'><div></div><div></div></div>",
    hexagon: "<div class='tileist-cell tileist-cell-hexagon'></div>"
  };
  TwoDimensionalArray = (function(_super) {
    __extends(TwoDimensionalArray, _super);

    function TwoDimensionalArray(xSize, ySize, fill) {
      var x, y, _i, _j;
      if (fill == null) {
        fill = "";
      }
      for (x = _i = 0; 0 <= xSize ? _i < xSize : _i > xSize; x = 0 <= xSize ? ++_i : --_i) {
        this.push([]);
        for (y = _j = 0; 0 <= ySize ? _j < ySize : _j > ySize; y = 0 <= ySize ? ++_j : --_j) {
          this[x].push(fill);
        }
      }
    }

    TwoDimensionalArray.prototype.randomCell = function(flatIndex) {
      var arr;
      arr = [];
      arr[0] = randomIntFromInterval(0, this.length - 1);
      arr[1] = randomIntFromInterval(0, this[0].length - 1);
      if (flatIndex) {
        return this.coordToFlatIndex(arr);
      } else {
        return arr;
      }
    };

    TwoDimensionalArray.prototype.coordToFlatIndex = function(coords) {
      if (!coords instanceof Array || coords.length !== 2) {
        throw "Argument must be an array with length of exactly 2";
      }
      if (coords[0] > this.length || coords[1] > this[0].length) {
        throw "At least one of the coordinates exceeds the bounds of this 2d array.";
      }
      return coords[0] * this[0].length + coords[1];
    };

    TwoDimensionalArray.prototype.flatIndexToCoord = function(index) {
      var arr;
      if (typeof index !== "number") {
        throw new TypeError();
      }
      if (index < (this.length * this[0].length) - 1) {
        throw "Index exceeds exceeds array size";
      }
      arr = [];
      arr[0] = Math.floor(index / this[0].length);
      arr[1] = index % this[0].length;
      return arr;
    };

    TwoDimensionalArray.prototype.forEach2d = function(func) {
      var firstDimArr, secondDimArr, thisArg, x, y, _i, _len, _results;
      if (this === null || this === void 0) {
        throw new TypeError();
      }
      if (typeof func !== "function") {
        throw new TypeError();
      }
      thisArg = arguments.length >= 2 ? arguments[1] : void 0;
      _results = [];
      for (x = _i = 0, _len = this.length; _i < _len; x = ++_i) {
        firstDimArr = this[x];
        _results.push((function() {
          var _j, _len1, _ref, _results1;
          _ref = this[x];
          _results1 = [];
          for (y = _j = 0, _len1 = _ref.length; _j < _len1; y = ++_j) {
            secondDimArr = _ref[y];
            _results1.push(func.call(thisArg, this[x][y], x, y, this));
          }
          return _results1;
        }).call(this));
      }
      return _results;
    };

    return TwoDimensionalArray;

  })(Array);
  TileistCell = (function(_super) {
    __extends(TileistCell, _super);

    function TileistCell(coordinates, value, parent) {
      this.coordinates = coordinates;
      this.x = coordinates[0];
      this.y = coordinates[1];
      this.value = value;
      this.parent = parent;
    }

    return TileistCell;

  })(Object);
  scaleValues = function(values, scaleMin, scaleMax) {
    var max, min, num, _i, _len, _results;
    if (scaleMin == null) {
      scaleMin = 0;
    }
    if (scaleMax == null) {
      scaleMax = 1;
    }
    max = Math.max.apply(null, values);
    min = Math.min.apply(null, values);
    _results = [];
    for (_i = 0, _len = values.length; _i < _len; _i++) {
      num = values[_i];
      _results.push((((scaleMax - scaleMin) * (num - min)) / (max - min)) + scaleMin);
    }
    return _results;
  };
  randomIntFromInterval = function(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min);
  };
  square = function(num) {
    return num * num;
  };
  distanceOf = function(origin, location) {
    return Math.sqrt(square(origin[0] - location[0]) + square(origin[1] - location[1]));
  };
  colorize = function($el, dist, odd) {
    var absRatio, borderSide, methodA, methodB, ratio;
    ratio = (dist / 4) + randomIntFromInterval(-2, 2) / 16;
    methodA = ratio < 0 ? "lightenByRatio" : "darkenByRatio";
    methodB = ratio > 0 ? "desaturateByRatio" : "saturateByRatio";
    borderSide = odd ? "bottom" : "top";
    absRatio = Math.abs(ratio);
    return $el.css("border-" + borderSide + "-color", "" + (color[methodA](absRatio)[methodB](absRatio)));
  };
  grid = new TwoDimensionalArray(gridSize.x, gridSize.y, cell[settings.layout]);
  htmlStr = ((function() {
    var _i, _len, _results;
    _results = [];
    for (_i = 0, _len = grid.length; _i < _len; _i++) {
      column = grid[_i];
      _results.push("<div class='tileist-column'>" + (column.join("\n")) + "</div>");
    }
    return _results;
  })()).join("\n");
  this.append($("<div class='tileist-wrapper'>" + htmlStr + "</div>"));
  head = $("head");
  style = $("<style id='tileist-styles'>").appendTo(head);
  style.cssInject("" + this.selector + " *", {
    "box-sizing": "border-box"
  });
  style.cssInject(".tileist-wrapper", {
    "width": "" + (settings.cellWidth * gridSize.x) + "px"
  });
  style.cssInject(".tileist-column", {
    "width": "" + settings.cellWidth + "px",
    "float": "left"
  });
  style.cssInject(".tileist-cell", {
    "height": "" + settings.cellHeight + "px",
    "width": "100%",
    "position": "relative"
  });
  style.cssInject(".tileist-cell-triangle div", {
    "position": "absolute"
  });
  style.cssInject(".tileist-cell-triangle div:nth-of-type(2)", {
    "width": 0,
    "border-top": "0px solid transparent",
    "border-right": "" + settings.cellWidth + "px solid transparent",
    "border-bottom": "" + settings.cellHeight + "px solid transparent",
    "border-left": "0px solid transparent"
  });
  style.cssInject(".tileist-cell-triangle div:nth-of-type(1)", {
    "width": 0,
    "border-top": "" + settings.cellHeight + "px solid transparent",
    "border-right": "0px solid transparent",
    "border-bottom": "0px solid transparent",
    "border-left": "" + settings.cellWidth + "px solid transparent"
  });
  grid.cells = $(".tileist-cell");
  focus = settings.focus || grid.randomCell();
  grid.focalCell = grid.cells.eq(grid.coordToFlatIndex(focus));
  color = Color(settings.color);
  distances = (function() {
    var results;
    results = [];
    grid.forEach2d(function(el, x, y, arr) {
      var dist, index;
      dist = distanceOf(focus, [x, y]);
      index = grid.coordToFlatIndex([x, y]);
      return results[index] = dist;
    });
    return results;
  })();
  scaledDistances = scaleValues(distances, -1, 1);
  for (i = _i = 0, _len = scaledDistances.length; _i < _len; i = ++_i) {
    dist = scaledDistances[i];
    cell = grid.cells.eq(i);
    if (cell.children().length) {
      cell.children().each(function(j) {
        return colorize($(this), dist, j % 2);
      });
    } else {
      colorize(cell, dist);
    }
  }
  return $.fn.cssInject = void 0;
};
