'use strict'

var express = require('express'),
    app = express();

app.get('/', function(req, res) {
  res.send('Hello, from inside a container!');
});

app.listen(8080);
