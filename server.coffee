express = require 'express'
path = require 'path'

app = express();

app.get '/hi', (req, res) ->
  ref = req.get 'Referrer'
  console.log 'ref is ' + ref
  res.json ref

app.get '/', (req, res) ->
  res.sendFile path.resolve 'index.html'

app.listen 3024
