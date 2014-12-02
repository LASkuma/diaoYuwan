app = require './server/app'

server = app.listen process.env.PORT || 3024, () ->
  console.log 'server listening on port ' + server.address().port
