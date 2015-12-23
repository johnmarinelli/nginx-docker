'use strict'

var express = require('express'),
    app = express();

app.get('/', function(req, res) {
  res.send('Hello, from inside a container!');
});

app.get('/a', function(req, res) {
  res.send('SUP');
});

app.listen(8080);
