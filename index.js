'use strict' // use strict mode

var express = require('express') // import express

var app = module.exports = express() // create express app

app.get('/', function (req, res) { // create route
    res.send('GoodBye World!') // send response
});

if (!module.parent) { // if this is the main module
    app.listen(80) // listen on port 80
    console.log('Express started on port 80') // log to console
}