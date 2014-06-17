noflo = require 'noflo'
{MakeCanvasPrimative} = require '../lib/MakeCanvasPrimative'

class FillRect extends MakeCanvasPrimative
  description: 'Fills a rectangle'
  icon: 'pencil-square'
  constructor: ->
    ports =
      point:
        datatype: 'object'
        description: 'top left point'
      width:
        datatype: 'number'
      height:
        datatype: 'number'
    
    super 'fillRect', ports

  exports.getComponent = -> new FillRect
