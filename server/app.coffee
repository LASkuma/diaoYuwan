express = require 'express'
path = require 'path'

server = () ->
  app = express();

  app.use express.static 'bower_components'
  app.use express.static 'web'

  app.get '/hi', (req, res) ->
    ref = req.get 'Referrer'
    console.log 'ref is ' + ref
    res.send "<h1>Ref is #{ref}</h1>"

  app.get '/', (req, res) ->
    res.sendFile path.resolve 'server/index.html'

module.exports = server()
