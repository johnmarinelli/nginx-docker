'use strict'

var express = require('express'),
    app = express();

app.get('/', function(req, res) {
  res.send('Hello, from inside port ' + listener.address().port);
});

app.get('/a', function(req, res) {
  res.send('SUP');
});

app.listen(8080);
app.listen(8081);
app.listen(8082);
